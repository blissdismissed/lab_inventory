# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ItemTypes', type: :request do
  describe 'GET /item_types' do
    xit 'works! (now write some real specs)' do
      get item_types_path
      expect(response).to have_http_status(200)
    end
  end
end
