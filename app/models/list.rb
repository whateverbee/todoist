class List < ApplicationRecord
  has_many :list_items, class_name: "list_item", foreign_key: "reference_id"
  attr_accessor :title, :is_published

  def initialize(title, is_published=true)
    @title = title
    @is_published = is_published
  end

end
