json.extract! user_daily_log, :id, :log_date, :logtime, :remarks, :created_at, :updated_at
json.url user_daily_log_url(user_daily_log, format: :json)