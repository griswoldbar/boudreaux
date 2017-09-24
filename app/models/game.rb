class Game < ApplicationRecord
  def state
    Marshal.load(self[:state])
  end 
  
  def state=(game)
    self[:state] = Marshal.dump(game).force_encoding('UTF-8')
  end
end