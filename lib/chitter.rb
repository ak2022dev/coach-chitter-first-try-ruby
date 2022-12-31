class Chitter

  def initialize
    @@users = {}
  end

  def self.sign_up(email, password)
    @@users[email] = password
  end

  def self.get_users
    return @@users
  end

end
