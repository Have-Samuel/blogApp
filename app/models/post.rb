class Post < ActiveRecord::Base
  belong_to :user
  has_many :likes
  has_many :comments
  created git stat
end
