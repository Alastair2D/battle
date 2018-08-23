require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
    enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    # session[:player_one] = params[:player_one] #name= in form
    # session[:player_two] = params[:player_two]
    $p1 = Player.new(params[:player_one])
    $p2 = Player.new(params[:player_two])
    session[:player_one_points] = 100
    session[:player_two_points] = 100
    redirect '/play'
  end

  get '/play' do 
    # @p1 = session[:player_one]
    # @p2 = session[:player_two]
    @p1 = $p1.name
    @p2 = $p2.name
    @player_one_points = session[:player_one_points]
    @player_two_points = session[:player_two_points]
    erb(:play)
  end

  post '/attack_p2' do
    # @p1 = session[:player_one]
    # @p2 = session[:player_two]
    @p1 = $p1.name
    @p2 = $p2.name
    erb(:attack_p2)
  end

  post '/attack_p1' do 
    @p1 = $p1.name
    @p2 = $p2.name
    erb(:attack_p1)
  end


  run! if app_file == $0

end
