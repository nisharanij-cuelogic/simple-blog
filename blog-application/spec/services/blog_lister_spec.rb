require "spec_helper.rb"
# require "blog"

describe Blog do
  context "should exist" do
    it "at least one" do
      blogs = BlogLister.find 	
      expect(blogs).not_to be_empty
    end
  end
end
