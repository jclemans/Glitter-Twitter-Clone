class ChangeFollowers < ActiveRecord::Migration
  def change
    rename_table :followers, :followed_users
  end

end
