class AddDescToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :description, :text
    add_column :orders, :reason, :text
  end
end
