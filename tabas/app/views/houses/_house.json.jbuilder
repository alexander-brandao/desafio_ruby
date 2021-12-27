json.extract! house, :id, :name, :address, :prince, :rooms, :bathrooms, :picture_one, :picture_two, :picture_three, :created_at, :updated_at
json.url house_url(house, format: :json)
