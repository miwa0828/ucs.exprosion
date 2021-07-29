class ChangeDatatypePhoneNumberOfShops < ActiveRecord::Migration[5.2]
  def change
    change_column :shops, :phone_number, :string, :limit => 20
  end
end
