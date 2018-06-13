class AddCompletedToSeries < ActiveRecord::Migration[5.2]
  def change
    add_column :series, :completed, :boolean
  end
end
