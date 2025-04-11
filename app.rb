require 'sinatra'
require 'securerandom'

# Random delay between 5 and 15 seconds
delay = rand(5..15)
sleep(delay)

get '/' do
  "Welcome to the Sinatra app! (Startup delay: #{delay} seconds)"
end

# Create a health-check endpoint
get '/healthz' do
  status 200
  "OK"
end

# Create a metrics endpoint for Prometheus
get '/metrics' do
  content_type 'text/plain'
  "sinatra_app_started 1\n"
end
