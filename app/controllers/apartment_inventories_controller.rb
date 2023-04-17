class ApartmentInventoriesController < ApplicationController

    def index
      @apartment_inventories = ApartmentInventory.all
      render json: @apartment_inventories
    end

    def new
      @apartment_inventory = ApartmentInventory.new
      render json: @apartment_inventory
    end

    def create
      @apartment_inventory = ApartmentInventory.new(apartment_inventory_params)
      if @apartment_inventory.save
        render json: @apartment_inventory, status: :created
      else
        render json: @apartment_inventory.errors, status: :unprocessable_entity
      end
    end

    def edit
      @apartment_inventory = ApartmentInventory.find(params[:id])
      render json: @apartment_inventory
    end

    def update
      @apartment_inventory = ApartmentInventory.find(params[:id])
      if @apartment_inventory.update(apartment_inventory_params)
        render json: @apartment_inventory
      else
        render json: @apartment_inventory.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @apartment_inventory = ApartmentInventory.find(params[:id])
      @apartment_inventory.destroy

      head :no_content
    end

    private

    def apartment_inventory_params
      params.require(:apartment_inventory).permit(:apartment_size_id, :inventory_id, :quantity)
    end
end
