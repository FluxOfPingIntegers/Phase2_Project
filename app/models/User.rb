
class User < ActiveRecord::Base
  has_many :comments
  has_many :favoritequotes
  has_many :quotes, through: :favoritequotes
  has_many :characters, through: :favoritequotes


end