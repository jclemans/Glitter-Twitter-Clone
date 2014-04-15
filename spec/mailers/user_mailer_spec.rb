require "spec_helper"

describe UserMailer do
  describe "signup_confirmation" do
    let(:user) { mock_model User, handle: 'testguy', email: 'test@test.com', password: '1234', password_confirmation: '1234' }
    let(:mail) { UserMailer.signup_confirmation(user) }

    it "renders the headers" do
      mail.subject.should eq("Welcome to Glitter!")
      mail.to.should eq([user.email])
      mail.from.should eq(["admin@glitter.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Thanks for signing up for Glitter!")
    end
  end

end
