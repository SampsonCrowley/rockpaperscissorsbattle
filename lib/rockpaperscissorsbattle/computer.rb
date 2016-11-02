module Rockpaperscissorsbattle
  class Computer < Player
    def pick(options)
      options.sample
    end
  end

end