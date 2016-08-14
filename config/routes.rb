Rails.application.routes.draw do
  get 'seating_plans/index'

  get 'seating_plans/new'

  get 'seating_plans/create'

  get 'seating_plans/show'

  get 'events/new'

  get 'events/create'

  root to: 'visitors#index'
  devise_for :users
  devise_for :events
  devise_for :seating_plans
  resources :users
  resources :events
  resources :seating_plans
end
