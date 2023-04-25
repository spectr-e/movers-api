class BookingsController < ApplicationController
  def create
    booking = Booking.new(booking_params)
    booking.calculate_quotation_amount
    if booking.save
      render json: booking, status: :created
    else
      render json: {error: 'Booking could not be created'}, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.permit(:user_id, :mover_id, :apartment_id, :rating_id, :box_id, :pickup_address, :destination_address, :distance, :book_date, :book_time, :quotation)
  end

end
