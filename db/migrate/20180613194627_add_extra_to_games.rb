class AddExtraToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :first_inning_six_over_runs, :integer
    add_column :games, :first_inning_ten_over_runs, :integer
    add_column :games, :first_inning_twenty_over_runs, :integer    
    add_column :games, :first_inning_wides, :integer
    add_column :games, :first_inning_extras, :integer    
    add_column :games, :second_inning_six_over_runs, :integer
    add_column :games, :second_inning_ten_over_runs, :integer
    add_column :games, :second_inning_twenty_over_runs, :integer
    add_column :games, :second_inning_wides, :integer
    add_column :games, :second_inning_extras, :integer
  end
end
