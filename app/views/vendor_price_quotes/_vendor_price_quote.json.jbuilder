json.extract! vendor_price_quote, :id, :product_id, :vendor, :unit_of_measure, :stock_unit_of_measure, :price, :country_of_origin_code, :valid_from, :created_at, :updated_at
json.url vendor_price_quote_url(vendor_price_quote, format: :json)
