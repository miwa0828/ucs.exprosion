class RenameNewPostsToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_table :new_posts, :posts
  end
end
