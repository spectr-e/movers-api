class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authenticate_user!
    token = request.headers['Authorization']&.split&.last
    if token && JWT.decode(token, 'secret_key', true, algorithm: 'HS256')
      user_id = JWT.decode(token, 'secret_key', true, algorithm: 'HS256')[0]['user_id']
      @current_user = User.find(user_id)
    else
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token, if: -> { request.format.json? }

end
