class Comment < ActiveRecord::Base
  belong_to :user
  belong_to :post
  has_many :likes
end
