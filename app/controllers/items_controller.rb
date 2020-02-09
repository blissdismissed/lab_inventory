# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @all_items = Item.all
  end
end
