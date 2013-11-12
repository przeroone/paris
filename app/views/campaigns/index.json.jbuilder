json.array!(@campigns) do |campign|
  json.extract! campign, 
  json.url campign_url(campign, format: :json)
end
