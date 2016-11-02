module Rockpaperscissorsbattle
  class Game
    def initialize(args = {})
      @options =  { r: :s, s: :p, p: :r }
      @player1 = args[:player1] || Player.new
      @player2 = args[:player2] || Computer.new
    end

    def play
      puts "Welcome to Rock Paper Scissors"
      puts "Get ready to Battle!"
      pick1 = @player1.pick(@options)
      pick2 = @player2.pick(@options)
      compare(pick1, pick2)
    end

    def compare(pick1, pick2)
      if @options[pick1] == pick2
        puts "Player1 wins!"
        winner = 1
      elsif
        @options[pick2] == pick1
        puts "Player2 wins!"
        winner = 2
      else
        "You tied..."
        winner = 0
      end
    end

  end

end