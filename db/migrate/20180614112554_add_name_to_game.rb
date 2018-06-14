class AddNameToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :name, :text
    add_column :games, :completed, :boolean
  end
end
