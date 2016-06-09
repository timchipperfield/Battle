require 'game'

describe Game do


  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1, receive_damage: nil }
  let(:player2) { double :player2, receive_damage: nil }


  describe '#attack' do
    it 'responds to #attack' do
      expect(game).to respond_to(:attack).with(1).argument
    end

    it 'casuses damage to the specified player' do
      expect(player1).to receive :receive_damage
      game.attack(player1)
    end

    context 'When the attack is complete' do
      it 'switches the player for the current turn' do
        game.attack(player2)
        expect(game.current_turn).to eq player2
      end
    end
  end
end
