Rails.application.routes.draw do
  resources :users
  resources :user_lists
  resources :sub_tasks
  resources :tasks
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
