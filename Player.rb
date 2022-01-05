class Player
  attr_accessor :lives
  attr_reader :name, :total_lives
  
  def initialize(name, total_lives)
    @name = name
    @total_lives = total_lives
    @lives = @total_lives
  end
 
end