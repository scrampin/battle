require 'game'

describe Game do
  subject(:game) { described_class.new(steph, ruan) }
  let(:steph) { double :steph }
  let(:ruan) { double :ruan }

  describe '#attack' do
    it 'calls takes_damage on another object' do
      expect(steph).to receive(:takes_damage)
      game.attack(steph)
    end
  end
end
