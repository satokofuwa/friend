class AddImgToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :img, :string
    add_reference :blogs, :user, foreign_key: true, null: false
  end
end
