class Order < ApplicationRecord
  enum order_type: [:teams, :not_session, :yes_session, :player_performance, :extra_runs, :total_sixes, :total_fours, :total_wickets]
  enum odds_type: [:favourite, :underdog]
  enum result_type: [:profit, :loss]
end
