# has a name and hit points
# can be damaged

class Player

  attr_reader :name, :hp

  DEFAULT_HP = 100
  DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(opponent)
    opponent.takes_damage
  end

  def takes_damage
    self.hp -= DEFAULT_DAMAGE
  end

  attr_writer :hp

end
