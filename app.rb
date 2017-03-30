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
    @game.switch_turns
    erb :play
  end

  get '/attack' do
    @game = $game
    if @game.current_player == @game.player1
      @game.attack(@game.player2)
    else
      @game.attack(@game.player1)
    end
    erb :attack
  end

end
