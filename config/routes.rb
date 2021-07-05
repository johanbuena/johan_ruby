Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html  
  get '/users/all' => 'users#all', as: 'all_subscribers'
  resources :users
  
  # get '/users' => 'users#index', as: 'users_home'
  # get '/users/new' => 'users#new', as: 'users_new'
  # get '/users/edit' => 'users#new', as: 'users_edit'
  # post '/users' => 'users#create', as: 'users_create'
  # delete '/users/:id' => 'users#destroy', as: 'users_delete'

end
