class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name, limit: 300
      t.string :city, limit: 300
      t.string :country, limit: 300
      t.integer :ground_size

      t.timestamps
    end
    add_index :venues, :name, unique: true
  end
end
