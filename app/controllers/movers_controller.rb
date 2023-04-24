class MoversController < ApplicationController
    def index
      @movers = Mover.all
    end
  
    def show
      @mover = Mover.find(params[:id])
    end
  
    def new
      @mover = Mover.new
    end
  
    def create
      @mover = Mover.new(mover_params)
  
      if @mover.save
        redirect_to @mover
      else
        render 'new'
      end
    end
  
    def edit
      @mover = Mover.find(params[:id])
    end
  
    def update
      @mover = Mover.find(params[:id])
  
      if @mover.update(mover_params)
        redirect_to @mover
      else
        render 'edit'
      end
    end
  
    def destroy
      @mover = Mover.find(params[:id])
      @mover.destroy
  
      redirect_to movers_path
    end
  
    private
      def mover_params
        params.require(:mover).permit(:name, :email, :logo, :address, :description, :services_offered, :availability, :deposit_req, :full_packaging, :rate_per_kilometer)
      end
  end
  
