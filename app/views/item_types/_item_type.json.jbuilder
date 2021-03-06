# frozen_string_literal: true

json.extract! item_type, :id, :name, :category, :description, :created_at, :updated_at
json.url item_type_url(item_type, format: :json)
