require "bcrypt"

class User < ActiveRecord::Base

  has_many :entries, foreign_key: :author_id

  # Remember to create a migration!
  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end
end
