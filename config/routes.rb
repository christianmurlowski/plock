Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :users
  resources :participations
  mount API::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"
      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'
end
