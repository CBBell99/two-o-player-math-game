class Player
  attr_reader :lives
  attr_accessor :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrease_lives
    @lives -= 1
  end


end
