require "dotenv"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :google_oauth2,
    ENV['AUTH0_CLIENT_ID'],
    ENV['AUTH0_CLIENT_SECRET']
  )
end