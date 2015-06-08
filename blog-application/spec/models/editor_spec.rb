require "spec_helper.rb"
require "editor"

describe 'Editor' do
  context "login" do
    it "successfully" do
      editor = Editor.new
      editors = editor.login([email:'admin@blogpost.com', password:'12345'])
      expect(editors.count).to eql(1)
    end
  end
end