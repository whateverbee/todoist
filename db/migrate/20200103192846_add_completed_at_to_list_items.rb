class AddCompletedAtToListItems < ActiveRecord::Migration[6.0]
  def change
    add_column :list_items, :completed_at, :datetime
  end
end
