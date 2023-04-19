json.extract! booking, :id, :user_id, :mover_id, :apartment_size_id, :rating_id, :box_id, :pickup_address, :destination_address, :distance, :book_date, :book_time, :quotation, :created_at, :updated_at
json.url booking_url(booking, format: :json)
