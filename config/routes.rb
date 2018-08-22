Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
  resources :kinds
  resources :phones
  resources :addresses
  resources :contacts
  resources :kings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
