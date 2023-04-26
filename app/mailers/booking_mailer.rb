class BookingMailer < ApplicationMailer
  def confirmation_email
    @booking = params[:booking]
    mail(to: @booking.user.email, subject: 'Movers Booking Confirmation')
  end
end
