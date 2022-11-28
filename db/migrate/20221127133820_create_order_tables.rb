class CreateOrderTables < ActiveRecord::Migration[7.0]
  def change
    create_table :order_tables do |t|
      t.date :order_date
      t.integer :quantity
      t.references :users, null: false, foreign_key: true
      t.timestamps
    end
  end
end
