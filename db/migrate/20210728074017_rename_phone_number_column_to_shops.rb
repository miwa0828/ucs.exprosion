class RenamePhoneNumberColumnToShops < ActiveRecord::Migration[5.2]
  def change
    rename_column :shops, :phone_number, :varchar
  end
end
