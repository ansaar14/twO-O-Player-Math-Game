require './player'
require './game'



class Question

  attr_accessor :num1, :num2, :question, :answer

  def initialize 
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    # @question = " #{@current_player} What is #{@num1} plus #{@num2} equal?"
    @answer = @num1 + @num2

  end

  def print_question (name)
    puts " #{name} What is #{@num1} plus #{@num2} equal?"
  end
   
end