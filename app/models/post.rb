class Post < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true

  belongs_to :category

 after_create :update_total_posts_count

 private

  def update_total_posts_count
  category.increment(:total_count, 1).save
  end

end