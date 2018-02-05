class Item < ApplicationRecord
  validates_presence_of :name, :description, :price
  belongs_to :category
end
