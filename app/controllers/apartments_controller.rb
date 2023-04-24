class ApartmentsController < ApplicationController
    before_action :set_apartment, only: [:show, :edit, :update, :destroy]

    def index
      @apartments = Apartment.all
      render json: @apartments
    end

    def show
      render json: @apartment
    end

    def new
      @apartment = Apartment.new
      render json: @apartment
    end

    def create
      @apartment = Apartment.new(apartment_params)
      if @apartment.save
        render json: @apartment, status: :created, location: @apartment
      else
        render json: @apartment.errors, status: :unprocessable_entity
      end
    end

    def edit
      render json: @apartment
    end

    def update
      if @apartment.update(apartment_params)
        render json: @apartment
      else
        render json: @apartment.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @apartment.destroy
      head :no_content
    end

    private

    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    def apartment_params
      params.require(:apartment).permit(:size, :description, :labour, :labour_cost)
    end

end
