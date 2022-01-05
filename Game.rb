require './Question'
require './Player'

class Game

  def initialize
    @player1 = Player.new('Player 1', 3)
    @player2 = Player.new('Player 2', 3)
    @count = 0
  end

  def get_player(active = true)
    if @count % 2 == 1 && active == true
      return @player1
    else 
      return @player2
    end
  end

  def lost_1_life
    get_player.lives -= 1

    if get_player.lives == 0
      puts "#{get_player(false).name} wins with a score of #{get_player(false).lives}/#{get_player(false).total_lives}"
      puts "-------- GAME OVER --------"
      puts "Good bye!"
    end
    return get_player.lives
  end

  def print_score
    puts "P1: #{@player1.lives}/#{@player1.total_lives} vs P2: #{@player2.lives}/#{@player2.total_lives}"
  end

  def start 
    puts "Math Game begins!"
    while true do

      @count += 1
      q = Question.new
      puts "#{get_player.name}: #{q.question}"

      print ">"
      answer = gets.chomp.to_i

      if q.validate_answer(answer) 
        puts "#{get_player.name}: YES! You are correct."
      else 
        puts "#{get_player.name}: Seriously? No!"
        break if lost_1_life == 0
      end
      print_score
      puts "-------- NEW TURN --------"
    end
  end
end

game = Game.new()
game.start