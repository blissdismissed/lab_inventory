require 'rails_helper'

RSpec.describe "item_types/index", type: :view do
  before(:each) do
    assign(:item_types, [
      ItemType.create!(
        name: "Name",
        category: "Category",
        description: "Description"
      ),
      ItemType.create!(
        name: "Boom",
        category: "Category",
        description: "Description"
      )
    ])
  end

  it "renders a list of item_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 1
    assert_select "tr>td", text: "Boom".to_s, count: 1
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
