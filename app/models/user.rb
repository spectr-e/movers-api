class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_secure_password

  def generate_jwt
    JWT.encode({ user_id: id }, 'secret_key', 'HS256')
  end
end
