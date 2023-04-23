class UsersController < ApplicationController
  skip_before_action :authorize, only: [:create]
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  def index
    render json: User.all, status: :ok
  end

  def create
    user = User.create!(create_user_params)
    render json: user, status: :created
  end

  private
  def create_user_params
    params.permit(:name, :email, :password, :password_confirmation, :phone, :add_email, :add_phone, :image)
  end

  def record_invalid(invalid)
    render json: { error: "Failed to create user, validation error!" }, status: :unprocessable_entity
  end
end
