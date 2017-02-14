module MathGame
  class Question
    attr_accessor :num1, :num2

    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end

    def ask_question
      puts "What is #{@num1} + #{@num2}?"
      answer = gets.chomp.to_i
      answer == @num1 + @num2
    end

  end
end

# q1 = MathGame::Question.new
# p q1.ask