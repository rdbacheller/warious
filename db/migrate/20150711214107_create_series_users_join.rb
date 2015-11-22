class CreateSeriesUsersJoin < ActiveRecord::Migration
  def up
    create_table :series_users, :id => false do |t|
      t.integer 'series_id'
      t.integer 'user_id'
    end

    add_index :series_users, ['series_id', 'user_id']
  end

  def down
    drop_table :series_users
  end
end
