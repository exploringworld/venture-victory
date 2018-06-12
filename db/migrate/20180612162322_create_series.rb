class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.text :name
      t.date :start_date
      t.text :participant_teams
      t.integer :winner_team

      t.timestamps
    end
  end
end
