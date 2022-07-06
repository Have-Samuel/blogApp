class User < ActiveRecord::Base
  has_many :comments, foreign_key: 'author_id'
  has_many :posts, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  def last_3_posts
    posts.orders(created_at: desc). limit(3)
  end
end

Dan = User.select(:id).find_by(name: 'Dan')
post = Post.first

Have = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')

Juma = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')