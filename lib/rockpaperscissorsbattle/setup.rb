module Rockpaperscissorsbattle
  class Setup
    def initialize
      @game = nil
      @score = [0,0,0]
      set_options
      start
    end

    def set_options
      num_of_players = get_options
      if num_of_players == 2
        @game = Game.new({player2: Player.new})
      else
        @game = Game.new
      end
    end

    def start
      track_winners(@game.play)
      reset
    end

    def track_winners(winner)
      @score[winner] += 1
      puts "Player 1 score: #{@score[1]}"
      puts "Player 2 score: #{@score[2]}"
      puts "Ties: #{@score[0]}"
    end

    def reset
      puts "Would you like to play again? (Y/N)"
      choice = gets.strip.downcase
      if choice == "y"
        start
      else
        puts "Thanks for playing!"
      end
    end


    def get_options
      puts "play with 1 or 2 players?"
      gets.strip.to_i
    end
  end
end