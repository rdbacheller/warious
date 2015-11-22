class CreatePost < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      #Series ID for join
      t.integer 'series_id'

      #Post title
      t.string 'title', :limit => 32, :null => false
      #Post author
      t.string 'author', :limit => 16, :null => false
      #Tyoe of post
      t.string 'catagory', :limit => 16, :null => false
      #URL associated with this post (null by default)
      t.string 'url', :limit => 32, :default => '*null*', :null => false
      #Caption associated with this post (null by default)
      t.text 'caption', :default => '*null*', :null => false
      #Body of text associated with this post (null by default)
      t.text 'body', :default => '*null*', :null => false
      #Last user to update this record
      t.string 'last_updated_by', :limit => 16, :null => false

      t.timestamps
    end
    #Creates a series index
    add_index 'posts', 'series_id'
  end

  def down
    drop_table :posts
    remove_index 'posts', 'series_id'
  end
end
