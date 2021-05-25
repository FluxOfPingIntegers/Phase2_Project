
class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :favorite_quotes
  has_many :quotes, through: :favorite_quotes
  has_many :characters, through: :favorite_quotes
  has_many :characters, through: :comments
  validates :username, uniqueness: :true # failure = self.errors.full_messages.to_sentence = "Username has already been taken"
  validates :username, presence: true 
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Must be a valid email address" } #needs testing.
  validates :email, presence: true
  validates :password, length: { in: 4..20 }
  validates :password, presence: true

  def rank
    rank = self.quotes.size + self.comments.size
    case rank
    when 0..9
      "Newb"
    when 10..19
      "Ranger"
    when 20..39
      "Maiar"
    when 40..79
      "Istari"
    when 80..99
      "Valar"
    when 100
      "Iluvatar"
    else
      "Nerd"
    end

  end

end