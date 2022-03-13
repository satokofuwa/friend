class Rails < ActiveRecord::Migration[6.0]
  def change
    t.bigint "user_id", null: true
    t.bigint "blog_id", null: true
  end
end
