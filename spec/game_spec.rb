require 'game'

describe Game do
  let(:enemy) {double :player_2}

  describe '#attack' do
    it 'damages the player' do
      expect(enemy).to receive(:receive_damage)
      subject.attack(enemy)
    end
  end

end
