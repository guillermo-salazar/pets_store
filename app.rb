require 'sinatra'
require './pet'
require './pet_parser'
# require './pet_serializer'
pets = ['{"id": 0 ,"name": "doggie"}','{"id": 1, "name": "puppie"}']
set :environment, :development
get '/pets' do
end
post '/pet' do
end
