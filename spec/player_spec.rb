require 'player'

describe Player do
  subject(:player) {described_class.new("Steph")}
  describe '#name' do
    it 'returns player name' do
      expect(player.name).to eq "Steph"
    end
  end
end
