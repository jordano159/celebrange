json.extract! celeb, :id, :name, :game_id, :created_at, :updated_at
json.url celeb_url(celeb, format: :json)
