# frozen_string_literal: true

class ItemType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
end
