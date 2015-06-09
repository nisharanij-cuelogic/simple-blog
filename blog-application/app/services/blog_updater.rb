class BlogUpdater
  def update(blog_id, params)
	blog = Blog.find(blog_id)
	if blog.present?
	  blog.update_attribute :text, params[:text]
	  blog.update_attribute :publish, params[:publish]
	end	
  end
end