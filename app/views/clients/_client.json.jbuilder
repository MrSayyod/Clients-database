json.extract! client, :id, :contract, :name, :phone_model, :workplace, :paid_amount, :remaining_amount, :duration, :pay_date, :phone_number, :created_at, :updated_at
json.url client_url(client, format: :json)
