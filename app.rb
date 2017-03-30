require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  set :sessions, true
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/'

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params['player_1'])
    player2 = Player.new(params['player_2'])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect to('/play')
  end

end
