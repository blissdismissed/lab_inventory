# frozen_string_literal: true

FactoryBot.define do
  factory :item_type do
    name { Faker::Appliance.equipment }
    category { 'FDM' }
    description { 'This is a 3D printer' }
  end
end
