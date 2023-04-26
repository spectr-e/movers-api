class MoversController < ApplicationController

  def index
      @movers = Mover.all
      render json: @movers
  end

  def show
      @mover = Mover.find(params[:id])
      render json: @mover
  end

  def new
      @mover = Mover.new
      render json: @mover
  end

  def create
      @mover = Mover.new(mover_params)
      if @mover.save
          render json: @mover, status: :created
      else
          render json: @mover.errors, status: :unprocessable_entity
      end
  end

  def edit
      @mover = Mover.find(params[:id])
      render json: @mover
  end

  def update
      @mover = Mover.find(params[:id])
      if @mover.update(inventory_params)
          render json: @mover
      else
          render json: @mover.errors, status: :unprocessable_entity
      end
  end

  def destroy
      @mover = Mover.find(params[:id])
      @mover.destroy
      head :no_content
  end

  private

  def mover_params
      params.permit(:name, :email, :logo, :address, :description, :services, :availability, :deposit, :packaging, :rate_per_km)
  end

end
