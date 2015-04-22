class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text   :blurb
      t.text   :body
      t.string :picture

      t.timestamps null: false
    end
  end
end
