# sets up a new game
# and allows players to attack

class Game

  attr_reader :player1, :player2, :current_player, :players

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @current_player = @player2
  end

  def attack(player)
    player.takes_damage
  end

  def switch_turns
    if current_player == players.first
      self.current_player = players.last
    else
      self.current_player = players.first
    end
  end

  attr_writer :current_player

end
