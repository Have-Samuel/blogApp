class Post < ActiveRecord::Base
  belongs_to :user, foreign_key: :author_id
  has_many :likes
  has_many :comments

  def update_post_conuter
    user.increment!(:post_counter)
  end

  after_save :update_post_conuter
    private

    def update_post_conuter
      author.increment!(:post_counter)
    end

  def last_5_comments
    comments.order!(created_at: :desc).limit(5)
  end
end

# Dan = User.select(:id).find_by(name: 'Dan')
# post = Post.first
