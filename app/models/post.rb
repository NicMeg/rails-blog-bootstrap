class Post < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true

  belongs_to :category

  after_create :update_total_posts_count

  def details
    "This post was created on #{ created_at.strftime ("%d %m %Y") }"
  end

  def self.total 
    count
  end

  scope :active, -> { where(active: true) }
  scope :order_by_latest_first, -> { order(created_at: :desc) }
  scope :limit_2, -> { limit (2) }

  private

  def update_total_posts_count
    category.increment!(:total_count, 1)
  end
end
