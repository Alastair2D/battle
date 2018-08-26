  get '/' do
    erb :index
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect to '/play'
  end

  get '/play' do
    erb :play
  end

  post '/scores' do
    session[:name1HP] = params[:name1HP]
    session[:name2HP] = params[:name2HP]
    redirect to '/play'
  end