class List < ApplicationRecord
  has_many :list_items, class_name: "list_item", foreign_key: "reference_id"
end
