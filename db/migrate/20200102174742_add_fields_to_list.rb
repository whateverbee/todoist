class AddFieldsToList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :title, :string
    add_column :lists, :list_items, :ListItem
  end
end
