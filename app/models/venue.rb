class Venue < ApplicationRecord
  enum ground_size: [:small, :medium, :big]

  def self.venue_name(id)
    self.find(id).name.try(:capitalize)
  end


end
