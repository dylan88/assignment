Rails.application.routes.draw do

  namespace :admin do
    get '',to: 'dashboard#index'
    get '/new', to: 'pages#new'
    post '/new', to: 'pages#create'
    resources :pages
    resources :courses

    resources :images
    resources :memberships
    get '/contact', to: 'contact#index'
  end

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :pages, only: [:index]
  resources :memberships, only: [:index]
  resources :users
  get  '/contact',  to: 'contact#new'
  post '/contact',  to: 'contact#create'
end
