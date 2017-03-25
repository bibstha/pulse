json.extract! product, :id, :name, :description, :unit_of_measure, :stock_min, :stock_max, :shelf_life, :cost, :selling_price, :country_of_origin_code, :created_at, :updated_at
json.url product_url(product, format: :json)
