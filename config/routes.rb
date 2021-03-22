Rails.application.routes.draw do
  root 'welcome#index'

  resources :railway_stations do
    patch :update_position, on: :member
    patch :update_time, on: :member
  end
  resources :routes
  resources :trains do
    resources :carriages, shallow: true
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end