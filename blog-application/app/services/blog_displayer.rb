class BlogDisplayer
  def self.show(id)
    blog = Blog.find(id)
    if blog.present?
      return blog
    else
      return 'not found'  	
    end
  end
end	