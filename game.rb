require './question'
require './player'

class Game

  attr_accessor :current_player, :player1, :player2, :next_player

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def start

    while player1.lives > 0 && player2.lives > 0 do

    question = Question.new
    
    question.print_question(@current_player.name)

    player_answer = gets.chomp.to_i

    if player_answer == question.answer
      puts "Correct"
      # puts "Player 1: #{player1.lives}/3 vs Player 2: #{player2.lives}/3"
      # puts "NEW TURN"
  

    else
      puts "Incorrect"
      @current_player.count_lives
      # puts "Player 1: #{player1.lives}/3 vs Player 2: #{player2.lives}/3"
      # puts "NEW TURN"

      # if @current_player.game_over?
       
      # end
    end
 

    puts "Player 1: #{player1.lives}/3 vs Player 2: #{player2.lives}/3"
    puts "NEW TURN"

    switch_players

  end
   puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3!"
    puts "GAME OVER"

  end


  def switch_players
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
    
  end
end