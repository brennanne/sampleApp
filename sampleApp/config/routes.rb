Rails.application.routes.draw do
  devise_for :users
  get 'cart/index'
  
  get '/cart', to: 'cart#index'

  resources :items
  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'
  
  get '/login', to: 'user#login'
  
  get '/logout', to: 'user#logout'
  
  get '/cart/clear', to: 'cart#clearcart'
  
  get '/cart/:id', to: 'cart#add'
  
  get '/cart/remove/:id', to: 'cart#remove'
  
  root :to => 'site#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
