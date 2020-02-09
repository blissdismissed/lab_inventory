FactoryBot.define do
  factory :item do
    name { 'false'}
    quantity { 5 }
    room_location { 'false'}
    where_in_room { 'false' }
  end
end