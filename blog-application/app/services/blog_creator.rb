class BlogCreator
  def self.create(params)
  	p "==inside create==#{params.inspect}"
    blog = Blog.new(title: params[:title], text: params[:text])
    blog.save
    return blog if blog.valid?
    return "error"
  end
end