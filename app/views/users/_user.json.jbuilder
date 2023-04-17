json.extract! user, :id, :name, :primary_email, :secondary_email, :primary_phone_number, :secondary_phone_number, :image, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
