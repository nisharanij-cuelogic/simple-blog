class CreateEditors < ActiveRecord::Migration
  def change
    create_table :editors do |t|
      t.email :email
      t.string :password

      t.timestamps
    end
  end
end
