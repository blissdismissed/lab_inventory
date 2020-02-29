# frozen_string_literal: true

describe 'items/index', type: :view do
  subject do
    render # render the html
    rendered # return what got rendered
  end

  let(:all_items) do
    FactoryBot.create_list(:item_type, 1)
    FactoryBot.create_list(:item, 3) # Keeps giving an error of 'item_type must exist'
  end

  before do
    # same as @all_items = []
    assign(:all_items, all_items) # start putting things in the 'assign hash'
  end

  it 'should render' do
    all_items.map do |item|
      expect(subject).to match(item.name)
      expect(subject).to match(item.room_location)
      expect(subject).to match(item.where_in_room)
    end
  end
end
