class Comment < ActiveRecord::Base
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post, foreign_key: 'author_id'

  def update_comments_conuter
    post.increment!(:comments_counter)
  end
end

post = Post.new(comments_counter)