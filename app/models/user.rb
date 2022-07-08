class User < ActiveRecord::Base
  has_many :comments, foreign_key: 'author_id'
  has_many :posts, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :post_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def last_3_posts
    posts.order(created_at: :desc).limit(3)
  end
end

# Dan = User.select(:id).find_by(name: 'Dan')
# post = Post.first
