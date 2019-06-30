json.extract! site, :id, :name, :description, :category, :keyword, :created_at, :updated_at
json.url site_url(site, format: :json)
