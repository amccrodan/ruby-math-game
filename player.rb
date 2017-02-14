module MathGame
  class Player
    attr_reader :lives, :title

    def initialize(title)
      @lives = 3
      @title = title
    end

    def lose_a_life
      @lives -= 1
    end

  end
end