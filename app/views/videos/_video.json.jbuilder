json.extract! video, :id, :nome, :link, :created_at, :updated_at
json.url video_url(video, format: :json)
