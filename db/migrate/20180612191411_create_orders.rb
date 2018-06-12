class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_type
      t.integer :odds_type
      t.decimal :invested_amount, precision: 10, scale: 2
      t.decimal :refund_amount, precision: 10, scale: 2
      t.integer :result_type
      t.integer :game_id
      t.text :learning

      t.timestamps
    end
  end
end
