# sets up a new game
# and allows players to attack

class Game

  attr_reader :current_player, :players

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def attack(player)
    player.takes_damage
  end

  def switch_turns
    self.current_player = opponent_of(current_player)
  end

  def opponent
    opponent_of(current_player)
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  private

  attr_writer :current_player

  def opponent_of(player)
    player == players.first ? players.last : players.first
  end

end
