Rails.application.routes.draw do
  root 'welcome#index'

  resources :railway_stations
  resources :trains
  resources :routes
  resources :carriages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
