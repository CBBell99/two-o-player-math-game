class Game
     attr_reader :player1, :player2, :currentPlayer
     
  def initialize
    @player1 = Player.new("Chris")
    @player2 = Player.new("Aya")
    @currentPlayer = @player1
  end  
 
  def start
     puts "New game started.  #{@player1.name}'s turn"
     turn
  end 

  def turn
    question = Question.new
    question.ask_question(@currentPlayer.name)
    print "> "
    input = gets.chomp

     if question.check_answer.to_i == input.to_i
      puts "That is correct"
     else
      @currentPlayer.decrease_lives
      puts "WRONG!!!!!" 
     end
    
    status
    check_lives
    puts "-------NEW TURN--------"
    @currentPlayer = ( @currentPlayer == @player2 ? @player1 : @player2)
  
    puts @currentPlayer.name
    turn
  end
  
  def status
   puts "#{@player1.name} #{@player1.lives}/3 vs #{@player2.name} #{@player2.lives}/3"
  end

  def check_lives
    if @player1.lives == 0
      puts "#{player2.name} is the winner"
      puts "------GAME OVER--------"
      exit
    elsif @player2.lives == 0 
      puts "#{player1.name} is the winner"
      puts "------GAME OVER--------"
      exit
    end  
  end
end



