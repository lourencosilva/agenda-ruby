json.extract! product, :id, :description, :brand, :category, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
