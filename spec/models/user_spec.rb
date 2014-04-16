require 'spec_helper'

describe User do
  it { should validate_presence_of :handle }
  it { should have_secure_password }
  it { should have_many :gleets }
  it { should have_many :mentions }
  it { should have_many :followed_users, through: :followed_users}
  it { should validate_uniqueness_of :email }

  it 'sends a welcome email' do
    user = User.new(handle: 'testguy', email: 'test@test.com', password: '1234', password_confirmation: '1234' )
    expect(UserMailer).to receive(:signup_confirmation).with(user)
    user.save
  end
end


