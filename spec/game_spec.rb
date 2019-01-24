require 'game'

describe Game do
  subject(:game) { described_class.new("Jedd", "Enemy") }
  let(:enemy) { double :player_2 }

  describe '#new'
    it 'should name the players on initialization' do
      expect(game.player_1.name).to eq("Jedd")
      expect(game.player_2.name).to eq("Enemy")
    end

  describe '#attack' do
    it 'damages the player' do
      allow(enemy).to receive(:receive_damage)
      expect(enemy).to receive(:receive_damage)
      subject.attack(enemy)
    end
  end

end
