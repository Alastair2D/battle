class Game

  attr_reader :current_player

  def initialize(player1, player2)
    $g1 = player1
    $g2 = player2
  end

  def attack
    @current_player.receive_damage
  end

  def first_mover
    rand(0..1) == 1 ? @current_player = $g1 : @current_player = $g2
  end

end
