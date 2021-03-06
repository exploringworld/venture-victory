class Series < ApplicationRecord
  serialize :participant_teams, Array 

  def self.inprogress_series
    self.where(completed: false)
  end

  def self.series_name(id)
    self.find(id).name.try(:capitalize)
  end

end
