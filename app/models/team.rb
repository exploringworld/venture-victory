class Team < ApplicationRecord
  enum category: [:international, :domestic]


  def self.names(ids)
    self.where(id: ids).order(:name).collect(&:name).join(', ')
  end

  def self.team_name(id)
    self.find(id).name.try(:capitalize)
  end
end
