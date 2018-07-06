require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    #binding.pry
    item = Item.new(params[:item])
    params[:item]
    session[:item] = params[:item]
    @sessions = session

    erb:checkout
  end

end
