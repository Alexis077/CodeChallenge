class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.references :buyer, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.float :quantity
      t.timestamps
    end
  end
end
