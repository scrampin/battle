require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  set :sessions, true
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params['player_1'])
    player2 = Player.new(params['player_2'])
    p $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb :attack
  end

end
