class Rails < ActiveRecord::Migration[6.0]
  def change
    t.bigint "user_id", null: false
    t.bigint "blog_id", null: false
  end
end
