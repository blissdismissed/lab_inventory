# frozen_string_literal: true

json.array! @item_types, partial: 'item_types/item_type', as: :item_type
