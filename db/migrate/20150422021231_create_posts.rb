class CreatePosts < ActiveRecord::Migration

  def up
    create_table :posts do |t|
      t.column "title", :string, :limit => 128, :null => false
      t.column "blurb", :text, :limit => 256, :null => false
      t.column "body", :text, :null => false
      t.column "picture", :string, :limit => 32, :null => false
      t.column "url", :string, :limit => 32, :null => false
      t.column "file", :string, :limit => 32, :null => false

      t.timestamps null: false
    end
  end

  def down
    drop_table :posts
  end

end
