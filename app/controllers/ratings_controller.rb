class RatingsController < ApplicationController
  def index
    ratings = Rating.all
    render json: ratings
  end

  def show
    rating = Rating.find(params[:id])
    render json: rating
  end

  def create
    rating = Rating.new(rating_params)

    if rating.save
      render json: rating, status: :created
    else
      render json: { errors: "unprocessebale entity" }, status: :unprocessable_entity
    end
  end

  def update
    rating = Rating.find(params[:id])

    if rating.update(rating_params)
      render json: rating
    else
      render json: rating.errors, status: :unprocessable_entity
    end
  end

  def destroy
    rating = Rating.find(params[:id])
    rating.destroy

    head :no_content
  end

  private

  def rating_params
    params.permit(:booking_id, :rating, :review)
  end
end
