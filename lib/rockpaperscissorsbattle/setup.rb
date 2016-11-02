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
      @game.play
      
    end

    def start
      track_winners(@game.play)
      reset
    end

    def track_winners(winner)
      @score[winner] += 1
      p @score
    end

    def reset
      puts "Would you like to play again? (Y/N)"
      choice = gets.strip.downcase
      start if choice == "y"
    end


    def get_options
      puts "play with 1 or 2 players?"
      gets.strip.to_i
    end
  end
end