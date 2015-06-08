class Editor < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :password, presence: true

	def login(editor_info)
	  p "=====check editor_info===#{editor_info.inspect}=====#{editor_info['email']}"		
	  e = Editor.where(email:editor_info['email'], password:editor_info['password'])
	  session[user] = e.first.email
      p "====#{e.inspect}" 
	end
end
