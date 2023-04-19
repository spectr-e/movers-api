class RatingsController < ApplicationController
  def index
    ratings = Rating.all
    render json: ratings
  end

  def show
    rating = Rating.find(params[:id])
    render json: rating
  end

  def current_user
    
  end 

  def create
    booking = Booking.find_by(id: rating_params[:booking_id])
  
    if booking.nil?
      render json: { error: 'Booking not found' }, status: :not_found
      return
    end
  
    rating = Rating.new(rating_params)
    rating.user = current_user # assuming current_user is available and authenticated
    rating.booking = booking
  
    if rating.save
      render json: rating, status: :created
    else
      render json: { error: rating.errors.full_messages }, status: :unprocessable_entity
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
