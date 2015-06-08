class Editor < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :password, presence: true
end
