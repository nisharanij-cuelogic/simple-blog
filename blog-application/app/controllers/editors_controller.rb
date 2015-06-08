class EditorsController < ApplicationController
  def index
  end 

  def login
    p "in url login"
    Editor.login(editor_params)
  end

  private
  def editor_params
    params.permit(:email, :password)
  end
end
