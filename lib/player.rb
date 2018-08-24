class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name, :hp

  def initialize(name, hit_points = DEFAULT_HIT_POINTS) 
    @name = name  
    @hp = hit_points
  end


end
