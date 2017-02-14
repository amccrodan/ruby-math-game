module MathGame
  class Main
    require './player'
    require './game'
    require './question'

    game1 = Game.new(Player.new(1), Player.new(2))
    game_over = false

    until game_over do
      puts "------- NEW TURN -------"
      print game1.current_player.title
      q = Question.new
      puts ": What is #{q.num1} + #{q.num2}?"

      if q.check_question
        puts "Good work!"
      else
        puts "No way, dumbo!"
        game1.current_player.lose_a_life

        if game1.current_player.lives == 0
          game_over = true
          game1.toggle_player
          next
        end

        life_arr = game1.current_lives
        puts "P1: #{life_arr[0]}/3 vs. P2: #{life_arr[1]}/3"
      end

      game1.toggle_player
    end

    puts "#{game1.current_player.title} is the winner!"
    puts "------- GAME OVER --------"

  end
end