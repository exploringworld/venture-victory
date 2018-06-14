class AddColumnToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :first_inning_thirty_over_runs, :integer
    add_column :games, :first_inning_forty_over_runs, :integer
    add_column :games, :first_inning_fifty_over_runs, :integer
    add_column :games, :second_inning_thirty_over_runs, :integer
    add_column :games, :second_inning_forty_over_runs, :integer
    add_column :games, :second_inning_fifty_over_runs, :integer    
  end
end
