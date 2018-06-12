class Venue < ApplicationRecord
  enum ground_size: [:small, :medium, :big]
end
