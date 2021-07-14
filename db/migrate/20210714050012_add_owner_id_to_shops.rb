class AddOwnerIdToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :owner_id, :integer
  end
end
