require "spec_helper.rb"
require "editor"

RSpec.describe Editor, :type => :model do
  context "login" do
  	it 'should successful' do
  	  editor = Editor.new	
  	  editors = editor.login({email:'admin@blogpost.com', password:'12345'})
  	  p "#{editors.count}"
      expect(editors.count).to eql(1)
  	end
  end
end