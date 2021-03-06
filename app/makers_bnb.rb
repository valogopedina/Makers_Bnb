ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative 'data_mapper_setup'
require 'sinatra/flash'

class MakersBnB < Sinatra::Base
  enable :sessions
  register Sinatra::Flash
  use Rack::MethodOverride

  get '/' do
    erb :index
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    redirect '/'
  end

  get '/log_in' do
    erb :log_in
  end

  post '/log_in' do
   redirect '/'
  end

  delete '/log_out' do
    redirect '/'
  end

  get '/requests' do
    erb :requests
  end

  get '/calendar' do
   erb :calendar
  end

  get '/space_new' do
    erb :space_new
  end

  post '/space_new' do
    redirect '/your_spaces'
  end

  get '/your_spaces' do
    erb :your_spaces
  end

  get '/update_space' do
    erb :update_space
  end

  post '/update_space' do
    redirect '/your_spaces'
  end












  run! if app_file == $0
end
