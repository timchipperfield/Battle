require_relative 'attack'

class Game

  attr_reader :players, :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack
    attack = Attack.new(@current_turn, opponent(@current_turn))
    attack.perform_attack
    change_turn
  end

  def change_turn
    @current_turn = opponent(@current_turn)
  end

  def opponent(current_player)
    @players.find { |player| player != @current_turn }
  end

  private

  def losers
    @players.select { |player| player.hitpoints <= 0 }
  end

  def game_over?

  end

end
