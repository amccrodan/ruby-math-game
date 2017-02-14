module MathGame
  class Player
    attr_reader :lives, :title

    def initialize(n)
      @lives = 3
      @title = 'Player ' << n.to_s
    end

    def lose_a_life
      @lives -= 1
    end

  end
end