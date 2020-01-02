class List < ApplicationRecord
  attr_accessor :title
  has_many :list_items

  def new(title)
    @title = title
    @items = []
  end

  def add_item(item)
    @items << item
    @items
  end

end
