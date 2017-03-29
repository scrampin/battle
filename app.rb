require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  set :sessions, true
  enable :sessions

  get '/' do
    p params
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params['player_1'])
    $player2 = Player.new(params['player_2'])
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $player1.return_name
    @player_2 = $player2.return_name
    erb :play
  end

  get '/attack' do
    @player_1 = $player1.return_name
    @player_2 = $player2.return_name
    erb :attack
  end

end
