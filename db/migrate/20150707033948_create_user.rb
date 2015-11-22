class CreateUser < ActiveRecord::Migration
  def up
    create_table :users do |t|
      #Username
      t.string 'username', :limit => 16, :null => false
      #Password (UPDATED: Use bcrypt over MD5! || Original: MD5 Hash)
      t.string 'password', :null => false
      #User's email
      t.string 'email',:limit => 32, :null => false
      #User's IP address
      t.string 'ip', :limit => 16, :default => '0.1.2.3', :null => false
      #User's privledge level
      t.integer 'priv', :limit => 1, :default => 0, :null => false
      #Special flag indicator
      t.integer 'flag', :limit => 1, :default => 0, :null => false
      #Last user to modify record (set to kami by default for initial creation)
      t.string 'last_updated_by', :limit => 16, :default => 'kami', :null => false

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
