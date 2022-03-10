class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :itemId
      t.integer :storeId
      t.integer :price

      t.timestamps
    end
  end
end
