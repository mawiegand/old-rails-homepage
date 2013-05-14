class RemoveCommenterFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :commenter
  end

  def down
    add_column :posts, :commenter, :string
  end
end
