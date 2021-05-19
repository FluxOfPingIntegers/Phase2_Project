
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :character
  validates :content, presence: true


end