json.extract! game, :id, :series_id, :venue_id, :match_type, :first_team, :second_team, :home_team, :first_team_score, :second_team_score, :first_inning_fours, :second_inning_fours, :first_inning_sixes, :second_inning_sixes, :first_inning_wickets, :second_inning_wickets, :result, :winning_team, :created_at, :updated_at
json.url game_url(game, format: :json)
