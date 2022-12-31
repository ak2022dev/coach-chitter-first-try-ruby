# File: chitter_spec.rb
require "chitter"

RSpec.describe "chitter" do
  context "sign-up" do
    it("Allows a new user to sign-up") do
      new_user = sign_up("test@email.com")
      expect(new_user).to eq("test@email.com")
    end
  end
end
