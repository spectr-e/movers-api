class BookingsController < ApplicationController
  def create
    booking = Booking.new(booking_params)
    booking.calculate_distance
    if booking.save
      render json: {
        booking: BookingSerializer.new(booking),
        movers: generate_quotations(booking)

      }, status: :created
    else
      render json: {error: booking.errors}, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.permit(:user_id, :apartment_id, :box_id, :pickup_address, :destination_address, :book_date)
  end


  def generate_quotations(booking)
    movers = Mover.all
    quotations = []

    movers.each do |mover|
      quotation = {
        name: mover.name,
        email: mover.email,
        address: mover.address,
        logo: mover.logo,
        description: mover.description,
        services: mover.services,
        availability: mover.availability,
        deposit: mover.deposit,
        packaging: mover.packaging,
        quotation: booking.distance * mover.rate_per_km + booking.box.cost_to_move_boxes + booking.apartment.labour_cost
      }
      quotations << quotation
    end
    quotations
  end
end
