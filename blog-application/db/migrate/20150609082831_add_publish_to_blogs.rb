class AddPublishToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :publish, :boolean, default: false
  end
end
