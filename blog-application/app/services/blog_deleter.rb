class BlogDeleter
  def self.delete(blog_id)
  	blog = Blog.find(blog_id)
  	if blog.present?
  	  blog.destroy	
  	end
  end	
end