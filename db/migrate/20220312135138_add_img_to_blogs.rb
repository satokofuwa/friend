class AddImgToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :img, :string
    t.references :user, null: false, foreign_key: true
  end
end
