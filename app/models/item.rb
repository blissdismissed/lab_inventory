class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :room_location, presence: true
  validates :where_in_room, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end