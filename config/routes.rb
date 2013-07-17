ToDo::Application.routes.draw do
  devise_for :admins

  devise_for :users

  root :to => 'lists#index'

  resources :lists do
    resources :items
  end
  
end
