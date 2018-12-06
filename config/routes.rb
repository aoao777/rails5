Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'
  get 'users/new'
  resources :users
end
