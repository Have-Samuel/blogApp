class Comment < ActiveRecord::Base
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post, foreign_key: 'author_id'
  validates :text, presence: true length: { minimum:3, maximum: 255 }

  def update_comments_counter
    post.comments_counter = 0 if post.comments_counter.nil?
    post.increment!(:comments_counter)
  end
end

# post = Post.new(comments_counter)
