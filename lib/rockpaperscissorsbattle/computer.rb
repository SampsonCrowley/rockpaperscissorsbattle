module Rockpaperscissorsbattle
  class Computer < Player
    def pick(options)
      options.keys.sample
    end
  end

end