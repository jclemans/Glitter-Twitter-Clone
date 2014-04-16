class ReplaceFollowedUsers < ActiveRecord::Migration
  def change
    drop_table :followed_users
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id
      t.timestamps
    end
  end
end
