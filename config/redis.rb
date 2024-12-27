production:
  <<: *default
  cache_on: <%= ENV['REDIS_URL'].blank? ? false : true %>
  url: <%= ENV['REDIS_URL'] %>
  password: