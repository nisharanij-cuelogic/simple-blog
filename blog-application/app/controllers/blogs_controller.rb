class BlogsController < ApplicationController
  def index
     @blogs = BlogLister.find
  end 

  def new    
  end

  def edit
    # @blog = Blog.find(params[:id])
  end

  def show
    @blog = BlogDisplayer.show(params[:id])
  end

  def create
    @blog = BlogCreator.create(blog_params)

    redirect_to :action => 'index' if @blog.valid? 
    if @blog.invalid?
      respond_to do |format|
        format.html  { render :action => "new" }
        format.json  { render :json => @blog.errors,
                      :status => :unprocessable_entity }
      end              
    end  
  end

  def update
    BlogUpdater.update(params[:id])    
  end

  def destroy
    BlogDeleter.delete(params[:id])
  end

  def publish
    BlogPublisher.publish(params[:blog_id])
  end

  def unpublish
    BlogUnpublisher.unpublish(params[:blog_id])
  end
 
  private
  def blog_params
    params['blog'].permit(:title, :text)
  end
end
