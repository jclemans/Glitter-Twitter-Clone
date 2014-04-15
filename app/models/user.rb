class User < ActiveRecord::Base
has_secure_password
validates_uniqueness_of :email
validates_presence_of :handle
has_many :mentions
has_many :gleets
has_many :followed_users
end
