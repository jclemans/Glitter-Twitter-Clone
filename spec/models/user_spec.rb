require 'spec_helper'

describe User do
  it { should validate_presence_of :handle }
  it { should have_secure_password }
  it { should have_many :gleets }
  it { should have_many :mentions }
  it { should validate_uniqueness_of :email }
end
