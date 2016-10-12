require 'sinatra'
require 'sinatra/json'

get '/' do
  'Hello world!'
end

post '/:dm_device_id/oneshots' do
  data = json request.body.read
  if data['form_namespace']
    status 202
    puts "Successful request, device: #{params['dm_device_id']}"
    puts data
  else 
    status 400
end
