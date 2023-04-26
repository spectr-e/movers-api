# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview
  def welcome_user
    # Set up a temporary order for the preview
    user = User.new(name: "Joe Smith", email: "joe@gmail.com", phone: "+254789898989", password: "weetabix", password_confirmation: "weetabix")

    BookingMailer.with(user: user).welcome_user
  end
end
