class BlogPublisher
  def self.publish(id)
  	blog = Blog.find(id)
  	if blog.present?
  	  blog.publish = true
  	  blog.save
  	end
  end
end