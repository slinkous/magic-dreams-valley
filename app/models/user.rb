class User < ActiveRecord::Base
  include BCrypt

  validates :username, presence: true, uniqueness: true

  def password
  	@password ||= Password.new(self.password_hash)
  end

  def password=(new_password)
  	@password = Password.create(new_password)
  	self.password_hash = @password
  end

  def aunthenticate(plain_text_password)
  	self.password == plain_text_password
  end
  
end
