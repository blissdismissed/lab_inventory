# frozen_string_literal: true

class CreateItemsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false, unique: true
      t.integer :quantity, null: false
      t.string :room_location, null: false
      t.string :where_in_room, null: false
      t.timestamps
    end
  end
end
