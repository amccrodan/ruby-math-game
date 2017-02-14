module MathGame
  class Game
    attr_reader :current_player

    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
      @current_player = player1
      # p @player1, @player2, @current_player
    end

    def toggle_player
      @current_player = @current_player == @player1 ? @player2 : @player1
    end

    def current_lives
      [@player1.lives, @player2.lives]
    end

    def over?
      @player1.lives == 0 || @player2.lives == 0
    end

  end
end