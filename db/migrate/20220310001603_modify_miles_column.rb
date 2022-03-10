class ModifyMilesColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :stores, :Miles, :miles
    change_column :stores, :miles, :integer, using: 'miles::integer'
  end
end
