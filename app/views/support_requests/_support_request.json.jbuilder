json.extract! support_request, :id, :title, :content, :user_id, :status, :category, :created_at, :updated_at
json.url support_request_url(support_request, format: :json)
