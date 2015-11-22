class CreateUsersPostsJoin < ActiveRecord::Migration
  def up
    create_table :users_posts, :id => false do |t|
      t.integer 'user_id'
      t.integer 'post_id'
    end

    add_index :users_posts, ['user_id', 'post_id']
  end

  def down
    drop_table :users_posts
  end
end