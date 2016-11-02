module Rockpaperscissorsbattle

  class Player
    def pick(options)
      choice = nil
      until options.include?(choice)
        puts %Q;Enter "r", "p" or "s";
        choice = STDIN.noecho(&:gets).strip.to_sym
      end
      choice
    end
  end

end