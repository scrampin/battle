require 'player'

describe Player do
  subject(:ruan) {described_class.new("Ruan")}
  subject(:steph) {described_class.new("Steph")}

  describe '#initialize' do
    it 'Initialises with specified name' do
      expect(steph.name).to eq "Steph"
    end
    it 'initializes with HP of 100' do
      expect(steph.hp).to eq Player::DEFAULT_HP
    end
  end

  describe '#takes_damage' do
    it "reduces a player's damage by 10" do
      expect {steph.takes_damage}.to change{steph.hp}.by -Player::DEFAULT_DAMAGE
    end
  end

  describe '#attack' do
    it 'calls takes_damage on another object' do
      expect(steph).to receive(:takes_damage)
      ruan.attack(steph)
    end
  end


end
