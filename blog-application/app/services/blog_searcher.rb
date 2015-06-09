class BlogSearcher
  def self.find
  	p "INside BlogSearcher"
    @blogs = Blog.all    
  end	
end