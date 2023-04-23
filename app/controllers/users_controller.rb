class UsersController < ApplicationController
  skip_before_action :authorize, only: [:create]
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  def index
    render json: User.all, status: :ok
  end

  # SignUp User
  def create
    user = User.create!(create_user_params)
    token = encode_token({ user_id: user.id })
    render json: {
             user: UserSerializer.new(user),
             jwt: token,
           },
           status: :created
  end

  # User Profile
  def show
    render json: current_user, status: :accepted
  end

  private

  def create_user_params
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation,
      :phone,
      :add_email,
      :add_phone,
      :image,
    )
  end

  def record_invalid(invalid)
    render json: {
             error: "Failed to create user, validation error!",
           },
           status: :unprocessable_entity
  end
end
