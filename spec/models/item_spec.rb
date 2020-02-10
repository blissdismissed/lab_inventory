# frozen_string_literal: true

require 'rails_helper'

describe Item do
  describe 'validations' do 
    subject do
      item.valid?
      item.errors
    end
    let(:item) { Item.new(item_attrs) }
    let(:item_attrs) do
      {
        name: 'Ardunio',
        quantity: 1,
        room_location: 'ET 382',
        where_in_room: 'Electronics Cabinet'
      }
    end

    context 'when the parameters are valid' do
      it 'should have no errors' do
        expect(subject.messages).to eq({})
      end
    end

    context 'when a Item with the name already exists' do
      before do
        # 0 Items in the database
        item2 = Item.new(item_attrs)
        item2.save
      end

      it 'should have an error on name' do
        # 1 Item in the database with the name.
        expect(subject.messages[:name]).to match([/has already been taken/])
      end
    end

    context 'when name is not provided' do
      before do
        item.name = nil
      end

      it "should have a error on name that says can't be blank" do
        expect(subject.messages[:name]).to match([/can't be blank/])
      end
    end

    context 'when room_location is not provided' do
      before do
        item.room_location = nil
      end

      it "should have a error on room_location that says can't be blank" do
        expect(subject.messages[:room_location]).to match([/can't be blank/])
      end
    end

    context 'when the quantity is less than 0' do
      before do
        item.quantity = -1
      end

      it 'should have a error on quantity that says must be greater than or equal to 0' do
        expect(subject.messages[:quantity]).to match(['must be greater than or equal to 0'])
      end
    end

    context 'when the quantity is a string' do
      before do
        item.quantity = 'gaijin master'
      end

      it 'should have a error on quantity' do
        expect(subject.messages[:quantity]).to match(['is not a number'])
      end
    end

    context 'when the quantity is a nil' do
      before do
        item.quantity = nil
      end

      it 'should have a error on quantity' do
        expect(subject.messages[:quantity]).to match(['is not a number'])
      end
    end

    context 'when where_in_room is not provided' do
      before do
        item.where_in_room = nil
      end

      it "should have a error on where_in_room that says can't be blank" do
        expect(subject.messages[:where_in_room]).to match([/can't be blank/])
      end
    end
  end
end
