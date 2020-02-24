require 'rails_helper'

RSpec.describe "item_types/edit", type: :view do
  before(:each) do
    @item_type = assign(:item_type, ItemType.create!(
      name: "MyString",
      category: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit item_type form" do
    render

    assert_select "form[action=?][method=?]", item_type_path(@item_type), "post" do

      assert_select "input[name=?]", "item_type[name]"

      assert_select "input[name=?]", "item_type[category]"

      assert_select "input[name=?]", "item_type[description]"
    end
  end
end
