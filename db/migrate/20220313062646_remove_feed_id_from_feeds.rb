class RemoveFeedIdFromFeeds < ActiveRecord::Migration[6.0]
  def change
    remove_index :feeds, :blog_id
    remove_column :feeds, :blog_id, :string
  end
end
