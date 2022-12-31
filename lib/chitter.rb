class Chitter
  def initialize
    @@users = {}
  end

  def self.sign_up(email)
    @@users[email] = 1
    return email
  end

end
