if Rails.env.production?
  Sidekiq.configure_client do |config|
    config.redis = { url: ENV['REDIS_URL'], size: 1, network_timeout: 5, 
      ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE } }
  end
  
  Sidekiq.configure_server do |config|
    config.redis = { url: ENV['REDIS_URL'], size: 7, network_timeout: 5, 
      ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE } }
  end
else
  Sidekiq.configure_server do |config|
    config.redis = { url: 'redis://localhost:6379/0' }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: 'redis://localhost:6379/0' }
  end
end
