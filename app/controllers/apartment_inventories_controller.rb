class ApartmentInventoriesController < ApplicationController
    before_action :set_apartment_inventory, only: [:show, :update, :destroy]

    def index
      @apartment_inventories = ApartmentInventory.all
      render json: @apartment_inventories
    end

    def show
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

    def update
      if @apartment_inventory.update(apartment_inventory_params)
        render json: @apartment_inventory
      else
        render json: @apartment_inventory.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @apartment_inventory.destroy
      head :no_content
    end

    private

    def set_apartment_inventory
      @apartment_inventory = ApartmentInventory.find(params[:id])
    end

    def apartment_inventory_params
      params.require(:apartment_inventory).permit(:apartment_id, :inventory_id, :quantity)
    end
end
