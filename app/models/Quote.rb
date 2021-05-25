
class Quote < ActiveRecord::Base
  belongs_to :character
  has_many :favorite_quotes
  has_many :users, through: :favorite_quotes



end