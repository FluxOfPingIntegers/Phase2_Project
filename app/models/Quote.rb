
class Quote < ActiveRecord::Base
  belongs_to :character
  has_many :favoritequotes
  has_many :users, through: :favoritequotes



end