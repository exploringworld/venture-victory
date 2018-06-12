class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name, limit: 300
      t.integer :category

      t.timestamps
    end
    add_index :teams, :name, unique: true
  end
end
