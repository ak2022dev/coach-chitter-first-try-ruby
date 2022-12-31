# File: chitter_spec.rb
require "chitter"

RSpec.describe "Chitter" do
  context "sign-up" do
    it("Allows a new user to sign-up") do
      chitter = Chitter.new
      new_user = Chitter.sign_up("test@email.com", "password")
      expect(Chitter.get_users).to have_key("test@email.com")
    end
  end
end
