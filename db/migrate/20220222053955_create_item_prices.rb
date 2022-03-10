class CreateItemPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :item_prices do |t|
      t.integer :item_id
      t.integer :store_id
      t.integer :price

      t.timestamps
    end
  end
end
