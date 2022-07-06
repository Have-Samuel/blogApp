class Like < ActiveRecord::Base
  belong_to :user
  belong_to post
end