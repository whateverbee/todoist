class ListItem < ApplicationRecord
  belongs_to :list
  attr_accessor :title, :is_completed

  def initialize(title, is_completed = false)
    @title = title
    @is_completed = is_completed
  end

end
