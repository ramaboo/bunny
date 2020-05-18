Rollbar.configure do |config|
  config.access_token = '17e6d94a7dda4d3d9bc6bf3c64eea65d'

  config.enabled = false if Rails.env.test? || Rails.env.development?

  config.environment = ENV['ROLLBAR_ENV'].presence || Rails.env
end
