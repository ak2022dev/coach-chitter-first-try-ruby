require 'set'

class Chitter


  def initialize
    @@all_users = {}
    @@logged_in_users = Set.new
    @@all_posts = Set.new
  end


  def self.all_posts
    return @@all_posts
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
    if self.user_exists(email) && self.validate_password(email, password)
      self.register_login(email)
      return true
    else
      return false
    end 
  end


  def self.validate_password(email, password)
    return @@all_users[email] == password
  end


  def self.register_login(email)
    @@logged_in_users.add(email)
  end


  def self.logged_in?(email)
    return @@logged_in_users.include?(email)
  end


  def self.log_out(email)
    if self.logged_in?(email)
      @@logged_in_users.delete(email)
    else
      raise("Cannot log-out if not logged-in")
    end
  end


  def self.post(email, message)
    @@all_posts.add(message)
  end

  
end
