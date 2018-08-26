  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.create(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    $game == nil ? (redirect '/') : erb(:play)
  end

  post '/attack' do
    $game.attack
    redirect '/play'
  end
