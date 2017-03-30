require 'game'

describe Game do
  subject(:game) { described_class.new(steph, ruan) }
  let(:steph) { double :steph }
  let(:ruan) { double :ruan }


  describe '#initialize' do
    it 'initializes with player 1 in play' do
      expect(game.current_player).to eq ruan
    end
  end

  describe '#attack' do
    it 'calls takes_damage on another object' do
      expect(steph).to receive(:takes_damage)
      game.attack(steph)
    end
  end

  describe '#switch_turns' do
    it 'switches turns between players' do
      game.switch_turns
      expect(game.current_player).to eq steph
    end
  end

end
