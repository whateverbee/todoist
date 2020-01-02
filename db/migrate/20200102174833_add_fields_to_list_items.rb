class AddFieldsToListItems < ActiveRecord::Migration[6.0]
  def change
    add_column :list_items, :title, :string
    add_column :list_items, :is_completed, :boolean
  end
end
