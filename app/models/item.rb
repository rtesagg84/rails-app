class Item < ApplicationRecord
  has_many :prices
  has_many :stores, through: :prices
  validates :Item_name, presence: true
end
