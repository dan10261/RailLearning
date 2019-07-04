Rails.application.routes.draw do
  #used to create,new,update users urls
  #rake routes  
  resources :glsusers
  resources :notes
  resources :categories #, except: [:destroy]
  resources :articles
  resources :addresses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #route URL localhost:port/pages/home to controller 'pages' method 'home'
  #get 'pages/home', to: 'pages#home'
  
  #route URL localhost:port/  root to controller 'pages' method 'home' 
  root 'pages#home'
  
  #route URL localhost:port/pages/about to controller 'pages' method 'about'
  #get 'pages/about', to: 'pages#about'
  get 'about', to: 'pages#about'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  
end
