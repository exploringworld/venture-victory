class Game < ApplicationRecord
  enum game_type: [:ODI, :T20, :TEST]


  def self.game_name(id)
    self.find(id).name.try(:capitalize)
  end  
end
