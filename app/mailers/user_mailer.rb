class UserMailer < ApplicationMailer
  def welcome_user
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Movers')
  end
end
