# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @all_items = Item.all
    @hello = 'World'
  end

  def new
  end

  def create
  end
  
end
