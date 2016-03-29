json.array!(@discount_items) do |discount_item|
  json.extract! discount_item, :id, :discount
  json.url discount_item_url(discount_item, format: :json)
end
