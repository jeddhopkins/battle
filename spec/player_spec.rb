require 'player'

describe Player do
  subject(:jedd) { Player.new("Jedd") }
  subject(:enemy) { Player.new("Enemy") }

  describe '#name' do
    it 'returns its name' do
      expect(jedd.name).to eq "Jedd"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(jedd.hp).to eq(described_class::DEFAULT_HP)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hp' do
      expect{ jedd.receive_damage }.to change{ jedd.hp }.by(-10)
    end
  end


end
