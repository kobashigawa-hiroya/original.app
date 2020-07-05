class AddPostsToAppid < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :app, null: false, foreign_key: true
  end
end
