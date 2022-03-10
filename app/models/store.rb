class Store < ApplicationRecord
    has_many :prices
    has_many :items,through: :prices
    validates :name, presence: true
end
