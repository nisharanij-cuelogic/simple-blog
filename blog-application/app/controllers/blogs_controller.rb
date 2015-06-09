class BlogsController < ApplicationController
  def index
     BlogSearcher.find
  end 

  def new    
  end

  def create
    BlogCreator.create(blog_params)
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy if blog.present?
  end

  private
  def blog_params
    params.permit(:title, :text)
  end
end
