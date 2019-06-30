json.extract! client, :id, :company, :email, :password_digest, :created_at, :updated_at
json.url client_url(client, format: :json)
