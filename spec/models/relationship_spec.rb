require 'spec_helper'

describe Relationship do
  it { should belong_to :user }
end
