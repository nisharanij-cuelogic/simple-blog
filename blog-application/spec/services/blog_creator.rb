require "spec_helper.rb"
# require "blog"

describe Blog do
  context "should" do
    it "create successfully" do
      blog = BlogCreator.create({title: 'Title', text: 'text to blog'})
      expect(blog.valid?).to eql(true)
    end

    it "though as invalid if title not present" do
      blog = BlogCreator.create({text: 'text to blog'})
      expect(blog.invalid?).to eql(true)
    end

    it "though as invalid if text not present" do
      blog = BlogCreator.create({title: 'text'})
      expect(blog.invalid?).to eql(true)
    end

    it "though as invalid if title and text not present" do
      blog = BlogCreator.create({title: '', text: ''})
      expect(blog.invalid?).to eql(true)
    end
  end
end
