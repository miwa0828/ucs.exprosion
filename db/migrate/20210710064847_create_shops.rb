class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :detail
      t.string :address
      t.string :image
      t.time :open_time
      t.time :close_time
      t.integer :phone_number
      t.text :url
      t.datetime :created_at
      t.datetime :update_at

      t.timestamps
    end
  end
end
