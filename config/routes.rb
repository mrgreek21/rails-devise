Rails.application.routes.draw do
  get 'events/new'

  get 'events/create'

  root to: 'visitors#index'
  devise_for :users
  devise_for :events
  resources :users
  resources :events
end
