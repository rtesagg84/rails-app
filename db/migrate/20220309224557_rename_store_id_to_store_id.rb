class RenameStoreIdToStoreId < ActiveRecord::Migration[5.2]
  def change
    rename_column :prices, :storeId, :store_id
  end
end
