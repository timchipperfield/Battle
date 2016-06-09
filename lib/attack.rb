class Attack

  def initialize(attacker, defender)
    @attacker = attacker
    @defender = defender
  end

  def perform_attack
    @defender.receive_damage
  end
end