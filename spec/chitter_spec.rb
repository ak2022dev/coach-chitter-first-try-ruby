# File: chitter_spec.rb
require "chitter"

RSpec.describe "Chitter" do
  context "sign-up" do
    it("Allows a new user to sign-up") do
      chitter = Chitter.new
      Chitter.sign_up("test@email.com", "password")
      expect(Chitter.get_users).to include("test@email.com" => "password")
    end
    it("Does not allow an existing user to sign-up") do
      chitter = Chitter.new
      Chitter.sign_up("test@email.com", "password")
      expect { Chitter.sign_up("test@email.com", "password") }.to raise_error("User already exists")
    end
  end
  context "log-in" do
    it("Allows an existing user to log-in with correct password") do
      chitter = Chitter.new
      Chitter.sign_up("test@email.com", "password")
      expect(Chitter.log_in("test@email.com", "password")).to be(true)
    end
    it("Dis-allows an existing user to log-in with correct password") do
      chitter = Chitter.new
      Chitter.sign_up("test@email.com", "password")
      expect(Chitter.log_in("test@email.com", "pass_word")).to be(false)
    end
  end
end
