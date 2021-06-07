Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/destroy'

  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
