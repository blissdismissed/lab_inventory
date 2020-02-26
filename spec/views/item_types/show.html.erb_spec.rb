# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'item_types/show', type: :view do
  before(:each) do
    @item_type = assign(:item_type, ItemType.create!(
                                      name: 'Name',
                                      category: 'Category',
                                      description: 'Description'
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Description/)
  end
end
