class User < ActiveRecord::Base
  after_create :send_welcome_message

  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :handle
  has_many :mentions
  has_many :gleets
  has_many :followed_users

  def send_welcome_message
    UserMailer.signup_confirmation(self)
  end


end
