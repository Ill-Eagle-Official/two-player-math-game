class Player 

  attr_accessor :lives, :name

  def initialize(name)
    self.name = name
    self.lives = 3
  end

  def lose_life
    self.lives -= 1
  end

end

