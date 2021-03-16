Rails.application.routes.draw do
  root 'welcome#index'

  resources :railway_stations do
    patch :update_position, on: :member
  end
  resources :trains
  resources :routes
  resources :carriages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
