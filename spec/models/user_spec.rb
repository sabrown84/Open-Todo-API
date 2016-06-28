require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#generate_auth_token" do
    it "creates a token" do
      expect(user.auth_token).to_not be_nil
    end
  end
end
