class ListItem < ApplicationRecord
  attr_accessor :title, :is_complete
  belongs_to :list, class_name: "list", foreign_key: "list_id"
  validates :title, presence :true, length: { minimum: 3 }

  def new(title)
    @title = title
    @is_complete = false
  end

end
