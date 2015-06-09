require "spec_helper.rb"
require "blog"

describe 'Blog' do
  context "should exist" do
    it "at least one" do
      expect(Blog.count).to eql(0)      
    end
  end
end

describe 'Blog' do
  context "should have" do
    it "valid title and text" do
      blog = Blog.new(title:'Blog1', text:'WHy to add blog')
      blog.save      
      expect(blog.valid?).to eql(true)      
    end

    it "valid title" do
      blog = Blog.new(text:'First Blog')
      blog.save
      expect(blog.valid?).to eql(false)
    end

    it "valid and unique title" do
      blog = Blog.new(title:'Blog1')
      blog.save
      expect(blog.valid?).to eql(false)
    end
  end
end