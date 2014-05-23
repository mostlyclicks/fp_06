json.array!(@swimmers) do |swimmer|
  json.extract! swimmer, :id, :name, :about
  json.url swimmer_url(swimmer, format: :json)
end
