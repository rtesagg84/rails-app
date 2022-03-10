class RenameItemIdToItemId < ActiveRecord::Migration[5.2]
  def change
    rename_column :prices, :itemId, :item_id
  end
end
