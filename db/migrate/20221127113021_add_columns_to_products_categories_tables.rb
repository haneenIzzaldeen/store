class AddColumnsToProductsCategoriesTables < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.references :category, null: false, foreign_key: true
    end
  end
end
