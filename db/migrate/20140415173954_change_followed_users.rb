class ChangeFollowedUsers < ActiveRecord::Migration
   def change
     rename_column :followed_users, :follower_id, :followed_id
   end
end
