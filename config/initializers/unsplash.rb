Unsplash.configure do |config|
  config.application_access_key = Rails.application.credentials.unsplash[:access_key]
  config.application_secret = Rails.application.credentials.unsplash[:secret_key]
  # config.application_redirect_uri = Rails.application.credentials.unsplash[:redirect_uri]
  config.utm_source = "nettrap_client"
end
