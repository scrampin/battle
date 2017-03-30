require 'sinatra/base'
require './lib/player'

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
    @player_1 = $player1.name
    @player_2 = $player2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player1.name
    @player_2 = $player2.name
    erb :attack
  end

end
