class BlogUnpublisher
  def self.unpublish(id)
  	blog = Blog.find(id)
  	if blog.present?
  	  blog.publish=false
  	  blog.save
  	end
  end
end