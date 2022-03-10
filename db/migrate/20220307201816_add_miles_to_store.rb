class AddMilesToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :Miles, :string
  end
end
