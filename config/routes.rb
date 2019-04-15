Rails.application.routes.draw do
  get 'posts/index'
  resources :posts
  root to: 'posts#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resource :sessions
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  resources :users
  
end
