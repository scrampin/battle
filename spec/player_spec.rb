require 'player'

describe Player do
  subject(:player) {described_class.new("Steph")}
  describe '#return_name' do
    it 'returns player name' do
      expect(subject.return_name).to eq "Steph"
    end
  end
end