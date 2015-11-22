class AddDescriptionToSeries < ActiveRecord::Migration
  def up
    add_column 'series', 'description', :text, :limit => 32, :default => '>>No Description Set<<', :null => false
  end

  def down
    remove_column 'series', 'description'
  end
end