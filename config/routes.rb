Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #route URL localhost:port/pages/home to controller 'pages' method 'home'
  #get 'pages/home', to: 'pages#home'
  
  #route URL localhost:port/  root to controller 'pages' method 'home' 
  root 'pages#home'
  
  #route URL localhost:port/pages/about to controller 'pages' method 'about'
  #get 'pages/about', to: 'pages#about'
  get 'about', to: 'pages#about'
  
  
end
