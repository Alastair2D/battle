require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
    enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    session[:p1] = params[:player_one]   # session[:p1], session[:p2] = params[:p1_name], params[:p2_name]
    session[:p2] = params[:player_two]   
    session[:p1_hp], session[:p2_hp] = 100, 100
    redirect to '/play'
  end

  post '/p1_attacks' do
    session[:p2_hp] -= 10 
    session[:message] = "P1's attack caused 10 damage"
    redirect '/play'
  end

   post '/p2_attacks' do
    session[:p1_hp] -= 10 
    session[:message] = "P2's attack totally 10'd you"
    redirect '/play'
  end

  get '/play' do
    @p1, @p2 = session[:p1], session[:p2]
    @hp1, @hp2 = session[:p1_hp], session[:p2_hp]
    @message = session[:message]
    erb(:play)
  end

  run! if app_file == $0

end

  # get '/coin_toss' do
  #   erb(:coin_toss)
  # end

  # get '/first_mover' do 
  #   $game.first_mover
  #   redirect '/play'
  # end