class AddCommentsCountToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :comments_count, :integer, default: 0

    # Post.find_each do |post|
    #   post.comments_count = post.comments.count
    #   post.save!
    # end
  end

  def down
    remove_column :posts, :comments_count
  end
end
