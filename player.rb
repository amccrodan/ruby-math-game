module MathGame
  class Player

    def initialize
      @lives = 3
    end

    def lose_a_life
      @lives -= 1
    end

  end
end