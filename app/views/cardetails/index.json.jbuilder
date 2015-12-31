json.array!(@cardetails) do |cardetail|
  json.extract! cardetail, :id, :image, :make_year, :make_car, :model, :price, :price
  json.url cardetail_url(cardetail, format: :json)
end
