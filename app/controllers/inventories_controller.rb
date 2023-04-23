# class InventoriesController < ApplicationController

#     def search
#         products = BestBuyAPI.search_products(params[:query])
#         render json: products
#     end

#     def show
#         inventory = Inventory.find(params[:id])
#         render json: inventory
#     end
# end
class InventoriesController < ApplicationController
    def show
      inventory = Inventory.find(params[:id])
      render json: inventory
    end

    def search
      products = BestBuyApi.search_products(params[:query])
      render json: products
    end
  end
