class Player 
  attr_accessor :lives, :name
  
  def initialize(name)
    @name = name
    @lives = 3
    
  end

  def count_lives
    @lives -= 1
  end

  def game_over?
    lives == 0
  end

end