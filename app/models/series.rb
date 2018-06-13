class Series < ApplicationRecord
  serialize :participant_teams, Array 

  def self.inprogress_series
    self.where(completed: false)
  end
end
