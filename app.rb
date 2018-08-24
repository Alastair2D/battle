require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
    enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:player_one])
    $p2 = Player.new(params[:player_two])
    $game = Game.new($p1, $p2)
    redirect '/coin_toss'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $game.attack
    redirect '/play'
  end

  get '/coin_toss' do
    erb(:coin_toss)
  end

  post '/first_mover' do
    $game.first_mover
    redirect '/play'
  end

  run! if app_file == $0

end
