class Chitter

  def initialize
    @@all_users = {}
  end

  def self.get_users
    return @@all_users
  end

  def self.sign_up(email, password)
    unless self.user_exists(email)
      @@all_users[email] = password
    else
      raise("User already exists")
    end
  end

  def self.user_exists(email)
    return @@all_users.include?(email)
  end

  def self.log_in(email, password)
    return self.user_exists(email) && self.validate_password(email, password)
  end

  def self.validate_password(email, password)
    return @@all_users[email] == password
  end

end
