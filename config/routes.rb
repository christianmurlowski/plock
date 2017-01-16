Rails.application.routes.draw do
  resources :events
  resources :users
  resources :participations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
