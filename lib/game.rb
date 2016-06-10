class Game

  attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    @players.select { |player| player != @current_turn }.first
  end

  def lose_game?
    opponent_of(current_turn).hit_points <= 0
  end

end
