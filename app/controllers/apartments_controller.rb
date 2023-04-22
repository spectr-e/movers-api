class ApartmentsController < ApplicationController
    before_action :set_apartment_size, only: [:show, :edit, :update, :destroy]

    def index
        @apartment_sizes = ApartmentSize.all
        render json: @apartment_sizes
    end

    def show
        render json: @apartment_size.as_json(only: [:id, :size, :description, :labour, :labour_cost], include: [:inventories])
    end

    def new
      @apartment_size = ApartmentSize.new
    end

    def edit
    end

    def create
      @apartment_size = ApartmentSize.new(apartment_size_params)

      if @apartment_size.save
        redirect_to @apartment_size, notice: 'Apartment size was successfully created.'
      else
        render :new
      end
    end

    def update
      if @apartment_size.update(apartment_size_params)
        redirect_to @apartment_size, notice: 'Apartment size was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @apartment_size.destroy
      redirect_to apartment_sizes_url, notice: 'Apartment size was successfully destroyed.'
    end

    private

    def set_apartment_size
        @apartment_size = ApartmentSize.find(params[:id])
    end

    def apartment_size_params
        params.require(:apartment_size).permit(:size, :description, :labour, :labour_cost)
    end
end
