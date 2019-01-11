Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  root 'topics#index'
  get 'pages/help'
  get 'users/new'

  resources :users
  resources :topics
  resources :comments
  

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'comments/new'
  post '/comments', to: 'comments#create'
end
