class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  has_many likes
  validate :name, presence: true, lenght: { minimum: 3, maximum: 50 }
end
