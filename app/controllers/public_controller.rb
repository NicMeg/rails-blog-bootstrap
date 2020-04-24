class PublicController < ApplicationController
  
  def homepage
    @posts = Post.all
    @categories = Category.all
  end
  
  def about
  end

  def blog
  end

  def contact
  end

end