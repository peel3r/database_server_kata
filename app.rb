require 'sinatra/base'

class Database_server < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    erb :index
  end

  get '/set' do
    key = params[:key]
    value = params[:value]
    session[key] = value
    "#{key} : #{value}"
  end

  get '/get' do
    key = params[:key_name]
    value = session[params[:key_name]]
    "The key of #{key} returns: #{value}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
