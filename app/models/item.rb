# frozen_string_literal: true

class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :room_location, presence: true
  validates :where_in_room, presence: true
  belongs_to :item_type
end
