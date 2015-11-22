class CreateUsersSeriesJoin < ActiveRecord::Migration
  def change
    create_table :users_series, :id => false do |t|
      t.integer 'user_id'
      t.integer 'series_id'
    end

    add_index :users_series, ['user_id', 'series_id']
  end
end
