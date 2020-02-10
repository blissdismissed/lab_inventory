# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    sequence(:name) { |n| "Item-#{n}" }
    quantity { 5 }
    room_location { 'ET 382' }
    where_in_room { 'Electronics Cabinet' }
  end
end
