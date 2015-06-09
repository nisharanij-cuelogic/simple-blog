class BlogCreator
  def self.create(params, &block)
  	p "==inside create==#{params.inspect}==#{params[:title]}"
    @blog = Blog.new({title: params[:title], text: params[:text]})
    @blog.save
    return @blog
  end
end