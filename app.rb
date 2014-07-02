require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader' if development?
require 'json'

set :bind, '0.0.0.0'

get '/users/:token' do
  json first_name: "foo", last_name: "bar"
end

post '/users' do
  puts JSON.parse(request.body.read)
  json first_name: "foo", last_name: "bar", token: "foobar"
end
