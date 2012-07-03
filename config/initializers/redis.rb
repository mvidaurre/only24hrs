if Rails.env.production?
  uri = URI.parse("redis://redistogo:a2ae91a3e72e9f28a216c64b68671eb7@carp.redistogo.com:9109/")
  REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
else
  REDIS = Redis.new(:host => "127.0.0.1", :port => 6379)
end