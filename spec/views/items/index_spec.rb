# frozen_string_literal: true

describe 'items/index', type: :view do
  subject do
    render # render the html
    rendered # return what got rendered
  end

  let(:all_items) { FactoryBot.create_list(:item, 3) }

  before do
    # same as @all_items = []
    assign(:all_items, all_items) # start putting things in the 'assign hash'
  end

  it 'should render' do
    all_items.map do |item|
      expect(subject).to match(item.name)
      expect(subject).to match(item.quantity.to_s)
      expect(subject).to match(item.room_location)
      expect(subject).to match(item.where_in_room)
    end
  end
end
