class BookingsController < ApplicationController
  def create
    booking = Booking.new(create_booking_params)
    booking.calculate_distance
    if booking.save
      render json: {
        booking: BookingSerializer.new(booking),
        movers: generate_quotations(booking),

      }, status: :created
    else
      render json: { error: booking.errors }, status: :unprocessable_entity
    end
  end

  def update
    booking = Booking.find_by(id: params[:booking_id])
    booking.update(update_booking_params)
    booking.update(quotation: booking.mover.rate_per_km * booking.distance + booking.apartment.labour_cost + booking.box.cost_to_move_boxes)
    if booking.status?
      # send confirmation email
      BookingMailer.with(booking: booking).confirmation_email.deliver_now
    end

    render json: booking, serializer: ConfirmBookingSerializer
  end

  private

  def create_booking_params
    params.permit(:user_id, :apartment_id, :box_id, :pickup_address, :destination_address, :book_date)
  end

  def update_booking_params
    params.permit(:mover_id, :status)
  end

  def generate_quotations(booking)
    movers = Mover.all
    quotations = []

    movers.each do |mover|
      mover = {
        id: mover.id,
        name: mover.name,
        email: mover.email,
        address: mover.address,
        logo: mover.logo,
        description: mover.description,
        services: mover.services,
        availability: mover.availability,
        deposit: mover.deposit,
        packaging: mover.packaging,
        quotation: booking.distance * mover.rate_per_km + booking.box.cost_to_move_boxes + booking.apartment.labour_cost,
      }
      quotations << mover
    end
    quotations
  end
end
