# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @all_items = Item.all
    @hello = 'World'
  end
end
