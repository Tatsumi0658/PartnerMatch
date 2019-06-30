Rails.application.routes.draw do
  resources :products
  resources :clients
  resources :sites
  resources :partners
  resources :sessions, only:[:new, :create, :destroy]
  resources :client_sessions, only:[:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
