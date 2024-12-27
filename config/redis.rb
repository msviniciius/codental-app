redis_url = ENV['REDIS_URL'] || 'redis://localhost:6379/1'

Redis.new(
  url: redis_url,
  ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE } # Use VERIFY_PEER se o certificado for confiável.
)