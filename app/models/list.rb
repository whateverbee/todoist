class List < ApplicationRecord
  attr_accessor :title
  has_many :list_items
  
end
