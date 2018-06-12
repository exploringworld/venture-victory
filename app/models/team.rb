class Team < ApplicationRecord
  enum category: [:international, :domestic]
end
