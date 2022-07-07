class Post < ActiveRecord::Base
  after_save :update_post_counter
  belongs_to :user, foreign_key: :author_id
  has_many :likes
  has_many :comments

  def last_5_comments
    comments.order!(created_at: :desc).limit(5)
  end

  private

  def update_post_counter
    user.increment!(:post_counter)
  end
end

# Dan = User.select(:id).find_by(name: 'Dan')
# post = Post.first
