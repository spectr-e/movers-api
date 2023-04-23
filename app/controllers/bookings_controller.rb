class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def index
    bookings = Booking.all
    render json: bookings
  end

  def create
    booking = Booking.new(booking_params)
    
    # Check if the associated records exist
    unless User.exists?(id: booking_params[:user_id]) &&
           Mover.exists?(id: booking_params[:mover_id]) &&
           ApartmentSize.exists?(id: booking_params[:apartment_size_id]) &&
           Rating.exists?(id: booking_params[:rating_id]) &&
           Box.exists?(id: booking_params[:box_id])
      render json: { errors: "One or more associated records do not exist" }, status: :unprocessable_entity
      return
    end
  
    if booking.save
      render json: booking, status: :created
    else
      render json: { errors: "Unprocessable entity" }, status: :unprocessable_entity
    end
  end
  

  def show
    render json: @booking
  end

  def update
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: { errors: "unprocessebale entity" }, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    head :no_content
  end

  def calculate_quotation(cost_to_move_boxes, labour_costs, distance, rate_per_km)
    quotation = cost_to_move_boxes + labour_costs + (distance * rate_per_km)
    return quotation
  end
  

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.permit(:user_id, :mover_id, :apartment_size_id, :rating_id, :box_id, :pickup_address, :destination_address, :distance, :book_date, :book_time, :quotation)
  end
end
