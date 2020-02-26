# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    name { Faker::Appliance.equipment }
    # quantity { Faker::Number.number(digits: 1) }
    room_location { 'ET 382' }
    where_in_room { 'Electronics Cabinet' }
    item_type
  end
end
