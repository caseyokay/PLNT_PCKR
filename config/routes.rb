Rails.application.routes.draw do

  root 'welcome#homepage'
  
  get '/login', to: 'sessions#new'
  post 'sessions', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  get "/plants/:id", to: "plants#show", as: "plants"
  # get "/users/:id", to: "users#show", as: "users"

  



  resources :user_plants
  resources :plants
  resources :users
  # , only: [:show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
