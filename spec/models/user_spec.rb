require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    let(:user) { create(:user) }

    it { should have_many(:lists) }

    describe "attributes" do
      it "should respond to email" do
        expect(user).to respond_to(:email)
      end
    end
  end
end
