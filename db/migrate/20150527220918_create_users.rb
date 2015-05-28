class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.column "username", :string, :limit => 32, :null => false
      t.column "password", :string, :limit => 32, :null => false
      t.column "email", :string, :limit => 64, :null => false
      t.column "site", :string, :limit => 128, :default => "", :null => false
      t.column "priv", :integer, :limit => 1, :default => 0, :null => false
      t.column "flag", :integer, :limit => 1, :default => 0, :null => false
      t.column "meta", :string, :default => "", :null => false

      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end
end
