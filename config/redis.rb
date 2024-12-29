require 'sidekiq'

redis_url = ENV['REDIS_URL'] || 'redis://localhost:6379/1'

$redis = Redis.new(
  url: redis_url,
  ssl_params: {
    verify_mode: OpenSSL::SSL::VERIFY_NONE
  }
)