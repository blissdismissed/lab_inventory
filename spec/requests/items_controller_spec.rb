# frozen_string_literal: true

require 'rails_helper'
require 'faker'

describe 'CRUD items', type: :request do
  let(:item) { Item.new(item_attrs) }
  let(:item_attrs) do
    {
      name: 'Ardunio',
      quantity: 1,
      room_location: 'ET 382',
      where_in_room: 'Electronics Cabinet'
    }
  end

  it 'access /items#index' do
    item = FactoryBot.create(:item)
    # Find a way to define the factory so that each Item
    # has a unique name. LA FUACKERIA
    item2 = FactoryBot.create(:item)
    # puts(item.name)
    # puts(item2.name)
    # puts(Faker::Name.name)

    get items_path # Route
    # expect(response).to render_template(:index) # items/index.html.erb
    expect(response.body).to include('Sup Wu Tang')
    expect(response.body).to include(item.name)
    expect(response.body).to include(item2.name)
  end

  # it "denies access to items#create" do
  #   contact_attributes = FactoryGirl.attributes_for(:contact)

  #   expect {
  #     post "/items", { contact: contact_attributes }
  #   }.to_not change(Contact, :count)

  #   expect(response).to redirect_to login_url
  # end
end
