# frozen_string_literal: true

class ChangeItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :quantity
    remove_column :items, :name
    add_column :items, :item_type_id, :integer
  end
end
