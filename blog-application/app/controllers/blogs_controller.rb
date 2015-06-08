class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end 

  def new    
  end

  def create
    blog_params
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
