# frozen_string_literal: true

Rails.application.routes.draw do
  resources :item_types
  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items/new', to: 'items#new'
  resource :items
end
