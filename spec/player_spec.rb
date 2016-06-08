require 'player'

describe Player do

	subject(:player1) {described_class.new("Tim")}
	subject(:player2) {described_class.new("Graham")}

  it "#name" do
    expect(player1.name).to eq("Tim")
  end

  describe '#hitpoints' do
    it 'returns the hitpoints' do
      expect(player1.hitpoints).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hitpoints' do
			expect{ player2.receive_damage }.to change { player2.hitpoints }.by(-10)
    end
  end




end