class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:create]

  def create
    user = User.find_by(email: login_params[:email])
    if user&.authenticate(login_params[:password])
      token = encode_token({ user_id: user.id })
      render json: { user: UserSerializer.new(user), jwt: token }, status: :created
    else
      render json: { error: "Invalid Username or Password!" }, status: :unprocessable_entity
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
