class InventoriesController < ApplicationController


    def index
        if params[:query].present?
          @inventories = Inventory.search(params[:query]).pluck(:name)
        else
          @inventories = Inventory.all.pluck(:name)
        end
        render json: @inventories
    end

    def show
      @inventory = Inventory.find(params[:id])
      render json: @inventory
    end

    def new
      @inventory = Inventory.new
      render json: @inventory
    end

    def create
      @inventory = Inventory.new(inventory_params)
      if @inventory.save
        render json: @inventory, status: :created
      else
        render json: @inventory.errors, status: :unprocessable_entity
      end
    end

    def edit
      @inventory = Inventory.find(params[:id])
      render json: @inventory
    end

    def update
      @inventory = Inventory.find(params[:id])
      if @inventory.update(inventory_params)
        render json: @inventory
      else
        render json: @inventory.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @inventory = Inventory.find(params[:id])
      @inventory.destroy
      head :no_content
    end

    private

    def inventory_params
      params.require(:inventory).permit(:name)
    end


end
