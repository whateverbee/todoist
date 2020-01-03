class AddFieldToList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :is_published, :boolean
  end
end
