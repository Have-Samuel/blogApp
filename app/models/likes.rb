class Like < ActiveRecord::Base
  after_save :update_likes_counter
  belongs_to :user, foreign_key: :author_id
  belongs_to post, foreign_key: :post_id

  private

  def update_likes_counter
    user.increment!(:likes_counter)
  end
end
