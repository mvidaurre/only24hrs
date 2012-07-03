if Rails.env.development?
  REDIS = Redis.new(:host => "127.0.0.1", :port => 6379)
else
  uri = URI.parse(ENV["REDISTOGO_URL"])
  REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
end