class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :series_id
      t.integer :venue_id
      t.integer :match_type
      t.integer :first_team
      t.integer :second_team
      t.integer :home_team
      t.integer :first_team_score
      t.integer :second_team_score
      t.integer :first_inning_fours
      t.integer :second_inning_fours
      t.integer :first_inning_sixes
      t.integer :second_inning_sixes
      t.integer :first_inning_wickets
      t.integer :second_inning_wickets
      t.text :result
      t.integer :winning_team

      t.timestamps
    end
  end
end
