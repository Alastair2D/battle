class Game

  attr_reader :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack
    @current_player.receive_damage
  end

  def first_mover
    rand(0..1) == 1 ? @current_player = @player1 : @current_player = $p2.name
  end

end
