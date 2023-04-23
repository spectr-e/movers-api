class ApplicationController < ActionController::Base
  before_action :authorize
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def encode_token(pay)
    # should store secret in env variable
    # pay[:exp] = Time.now.to_i + 3000
    JWT.encode(pay, "secret")
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers["Authorization"]
  end

  def decode_token
    if auth_header
      token = auth_header
      begin
        JWT::decode(token, "secret")[0]
      rescue JWT::DecodeError
        "Failed!"
      end
    end
  end

  def current_user
    if decode_token
      user_id = decode_token["user_id"]
      user = User.find_by(id: user_id)
      return user
    end
  end

  def logged_in?
    !!current_user
  end

  private

  def authorize
    return render json: { message: "Please login or sign up!" }, status: :unauthorized unless logged_in?
  end
end
