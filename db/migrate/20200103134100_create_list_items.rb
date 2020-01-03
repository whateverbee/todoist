class CreateListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_items do |t|
      t.string :title
      t.boolean :is_completed
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
