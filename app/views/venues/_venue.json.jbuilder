json.extract! venue, :id, :name, :city, :country, :ground_size, :created_at, :updated_at
json.url venue_url(venue, format: :json)
