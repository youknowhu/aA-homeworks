require 'rails_helper'

describe User do
  subject(:user) { User.new(password: "good_password", email: "kimmy@kimmy.com") }


  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }


  describe "#reset_session_token!" do
    it "sets a new session token" do
      user.valid?
      old_session_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(old_session_token)
    end
    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "#is_password?" do
    it "verifies a password is correct" do
      expect(user.valid_password?("good_password")).to be true
    end

    it "verifies a password is not correct" do
      expect(user.valid_password?("wrong_password")).to be false
    end
  end

  describe ".find_by_credentials" do
    before { user.save! }

    it "returns user given good credentials" do
      expect(User.find_by_credentials("kimmy@kimmy.com", "good_password")).to eq(user)
    end

    it "returns nil given bad credentials" do
      expect(User.find_by_credentials("kimmy1@kimmy.com", "good_password")).to eq(nil)
    end
  end
end
