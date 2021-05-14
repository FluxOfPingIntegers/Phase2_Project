
class User < ActiveRecord::Base
  has_many :comments
  has_many :favoritequotes
  has_many :quotes, through: :favoritequotes
  has_many :characters, through: :favoritequotes
  has_secure_password

#  def password=(string)
#    self.password_digest = BCrypt::Password.create(string)
#  end
#
#  def authenticate(password)
#    bcrypt = BCrypt::Password.new(self.password_digest)
#    bcrypt == password
#  end


end