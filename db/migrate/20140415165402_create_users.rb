class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :handle
      t.string :password_digest
      t.timestamps
    end

    create_table :followers do |t|
      t.integer :user_id
      t.integer :follower_id
      t.timestamps
    end

    create_table :gleets do |t|
      t.string :content
      t.integer :user_id
      t.timestamps
    end

    create_table :mentions do |t|
      t.integer :user_id
      t.integer :gleet_id
      t.timestamps
    end
  end
end
