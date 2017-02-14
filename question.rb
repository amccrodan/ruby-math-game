module MathGame
  class Question
    attr_reader :num1, :num2

    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end

    def check_question(answer)
      answer.to_i == @num1 + @num2
    end

  end
end

# q1 = MathGame::Question.new
# p q1.ask