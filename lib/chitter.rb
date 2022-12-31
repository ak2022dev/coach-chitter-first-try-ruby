class Chitter

  def initialize
    @@users = {}
  end

  def self.get_users
    return @@users
  end

  def self.sign_up(email, password)
    unless self.user_exists(email)
      @@users[email] = password
    else
      raise("User already exists")
    end
  end

  def self.user_exists(email)
    return @@users.include?(email)
  end

end
