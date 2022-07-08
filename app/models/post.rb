class Post < ActiveRecord::Base
  after_save :update_post_counter
  belongs_to :user, foreign_key: :author_id
  has_many :likes
  has_many :comments
  validates :title, presence: true, length: { minimum: 3, maximum: 255 }
  validates :text, length: { minimum: 3, maximum: 255 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def last_5_comments
    comments.order!(created_at: :desc).limit(5)
  end

  private

  def update_post_counter
    user.post_counter = o if user.post_counter.nil?
    user.increment!(:post_counter)
  end
end

# Dan = User.select(:id).find_by(name: 'Dan')
# post = Post.first
