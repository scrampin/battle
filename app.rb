require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true
  enable :sessions

  get '/' do
    p params
    erb :index
  end

  post '/names' do
    session['player_1'] = params['player_1']
    session['player_2'] = params['player_2']
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session['player_1']
    @player_2 = session['player_2']
    erb :play
  end

  post '/attack' do
    @player_2 = session['player_2']
    erb :attack
  end

end
