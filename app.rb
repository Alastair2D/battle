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
    redirect '/play'
  end

  get '/play' do 
    erb(:play)
  end

  post '/attack' do 
    Game.new.attack($p2)
    erb :attack
  end


  run! if app_file == $0

end
