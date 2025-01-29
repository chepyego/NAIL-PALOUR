json.extract! schedule, :id, :title, :start, :end, :manicurist_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
