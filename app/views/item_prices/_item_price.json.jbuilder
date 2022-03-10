json.extract! item_price, :id, :item_id, :store_id, :price, :created_at, :updated_at
json.url item_price_url(item_price, format: :json)
