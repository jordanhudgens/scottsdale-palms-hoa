json.extract! newsletter, :id, :title, :content, :newsletter_file, :user_id, :created_at, :updated_at
json.url newsletter_url(newsletter, format: :json)
