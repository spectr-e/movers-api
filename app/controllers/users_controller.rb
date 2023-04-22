class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :authorize_request, except: [:signup, :signin]

  def index
    @users = User.all
  end
  
  def show
    render json: @current_user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      jwt_token = encode(user_id: @user.id)
      response.set_header('Authorization', "Bearer #{jwt_token}")
      render json: { message: "Welcome #{name}!" }, status: :created
    else
      render json: { error: @user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  def update
    if @current_user.update(user_params)
      render json: @current_user
    else
      render json: { error: @current_user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  def destroy
    @current_user.destroy
    render json: { message: 'User deleted' }
  end


 private
 def set_user
   @user = User.find(params[:id])
 end

  def user_params
    params.require(:user).permit(:name, :primary_email, :secondary_email, :primary_phone_number, :secondary_phone_number, :image, :password_digest)
  end

  def encode(payload)
    JWT.encode(payload, Rails.application.secret_key_base)
  end

  def decode(token)
    JWT.decode(token, Rails.application.secret_key_base)[0]
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      decoded = decode(header)
      @current_user = User.find(decoded['user_id'])
    rescue JWT::DecodeError
      render json: { error: 'Invalid token' }, status: :unauthorized
    end
  end
end
