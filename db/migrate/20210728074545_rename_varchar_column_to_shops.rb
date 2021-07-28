class RenameVarcharColumnToShops < ActiveRecord::Migration[5.2]
  def change
    rename_column :shops, :varchar, :phone_number
  end
end
