class AddCategoriesToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :recommended, :boolean
    add_column :posts, :recently_watched, :boolean
    add_column :posts, :trending, :boolean
  end
end
