class Player

attr_reader :name

  def initialize(name) 
    @name = name  
  end
  
  def attack
    (@player_two_points - 10)
  end

    
end
