class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      #Series title
      t.string 'title', :limit => 64, :default => '<*% No Title Set %*>', :null => false
      #Series author
      t.string 'author', :limit => 32, :null => false

      # The subject of the series
      # t.string 'subject', :limit => 32, :null => false
      # TODO: Add a subject model and link through subject

      #Total series contributors
      t.integer 'total_conts' => 9, :default => 1, :null => false
      #Total posts currently in series
      t.integer 'total_posts' => 5, :default => 0, :null => false
      #Special flag
      t.integer 'flag', :limit => 1, :default => 0, :null => false
      #Last user to update this record
      t.string 'last_updated_by', :limit => 16,:null => false

      t.timestamps
    end
  end
end
