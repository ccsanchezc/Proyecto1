 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
  root 'home#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  

  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy' 
  resources :appoiments
  resources :consulting_rooms
  resources :doctors
  resources :professions
  resources :patients
  resources :users
  
 
  

end
