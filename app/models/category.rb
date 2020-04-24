class Category < ApplicationRecord
  validates_presence_of :title, :url
  has_many :posts

  def total
    posts.count
  end

end
 