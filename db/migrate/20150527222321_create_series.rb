class CreateSeries < ActiveRecord::Migration
  def up
    create_table :series do |t|
      t.column "title", :string, :limit => 32, :default => "", :null => false
      t.column "author", :string, :limit => 32, :default => "Emmanuel Goldstein", :null => false
      t.column "total", :int, :default => 0, :null => false
      t.column "meta", :string, :default => "", :null => false

      t.timestamps null: false
    end
  end

  def down
    drop_table :series
  end
end
