module Rockpaperscissorsbattle

  class Player
    def pick(options)
      choice = nil
      until options.include?(choice)
        puts %Q;Enter "r", "p" or "s";
        choice = gets.strip
      end
      choice
    end
  end

end