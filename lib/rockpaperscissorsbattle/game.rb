module Rockpaperscissorsbattle
  class Game
    def initialize(args = {})
      @options =  { r: :s, s: :p, p: :r }
      @player1 = args[:player1] || Player.new
      @player2 = args[:player2] || Computer.new
    end

    def welcome
      puts "Welcome to Rock Paper Scissors"
    end

    def play
      puts "Get ready to Battle!"

      print "Player 1:"
      pick1 = @player1.pick(@options)
      print "Player 2:"
      pick2 = @player2.pick(@options)
      compare(pick1, pick2)
    end

    def compare(pick1, pick2)
      if @options[pick1] == pick2
        puts "Player1 wins!"
        winner = 1
      elsif @options[pick2] == pick1
        puts "Player2 wins!"
        winner = 2
      else
        puts "You tied..."
        winner = 0
      end
    end

  end

end