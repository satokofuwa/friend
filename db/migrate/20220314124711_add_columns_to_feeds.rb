class AddColumnsToFeeds < ActiveRecord::Migration[6.0]
  def change
    add_column :feeds, :title, :string
    add_column :feeds, :content, :text
  end
end
