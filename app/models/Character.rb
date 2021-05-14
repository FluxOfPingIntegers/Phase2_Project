
class Character < ActiveRecord::Base
  has_many :quotes
  has_many :comments
  has_many :users, through: :comments


end