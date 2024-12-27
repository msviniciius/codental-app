require 'redis'

$redis = Redis.new(
  url: ENV['REDIS_URL'],
  enable_starttls_auto: true
  ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE }
)

