json.extract! order, :id, :name, :status, :total_price, :phone, :address, :email, :note, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
