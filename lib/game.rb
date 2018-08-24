class Game

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= 10
  end
  
end
