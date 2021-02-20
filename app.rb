require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
  erb :index
end

get '/new' do
  status 200 
  erb :create_puppy
end


post '/' do
  @pupname = params[:name]
  @pupage = params[:age]
  @pupbreed = params[:breed]
  erb :display_puppy
end


end