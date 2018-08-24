class Player

attr_reader :name, :hp

  def initialize(name) 
    @name = name  
    @hp = 50
  end

  def attack(player)
    player.hp -= 10  
  end 

  
    
end
