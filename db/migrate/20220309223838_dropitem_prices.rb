class DropitemPrices < ActiveRecord::Migration[5.2]
  def up
    drop_table :item_prices
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
