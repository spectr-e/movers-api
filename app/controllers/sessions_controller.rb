class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
          token = JWT.encode({ user_id: user.id }, 'secret_key', 'HS256')
          render json: { token: token }
        else
          render json: { error: 'Invalid email or password' }, status: :unauthorized
        end
      end
end
