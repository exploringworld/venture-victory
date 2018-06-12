class Learning < ApplicationRecord
  enum importance: [:five_star, :four_star, :three_star, :two_star, :one_star]
end
