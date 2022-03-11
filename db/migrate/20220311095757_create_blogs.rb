class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
      create_table "blogs", force: :cascade do |t|
      t.string "title"
      t.text "content"
      t.bigint "user_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["user_id"], name: "index_blogs_on_user_id"
    end
  end
end
