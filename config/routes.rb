Rails.application.routes.draw do
  #get 'sessions/new'

  #get 'sessions/create'

  #get 'sessions/destroy'

  #get 'users/new'

  #get 'users/create'

  #get 'users/show'

  #get 'users/destroy'
  
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:create, :destroy, :new]
  resources :stories
  root 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
