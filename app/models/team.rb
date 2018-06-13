class Team < ApplicationRecord
  enum category: [:international, :domestic]


  def self.names(ids)
    self.where(id: ids).order(:name).collect(&:name).join(', ')
  end
end
