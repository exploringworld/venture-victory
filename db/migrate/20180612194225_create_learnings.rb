class CreateLearnings < ActiveRecord::Migration[5.2]
  def change
    create_table :learnings do |t|
      t.text :name
      t.text :description
      t.integer :validated_times
      t.integer :importance

      t.timestamps
    end
  end
end
