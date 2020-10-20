Rails.application.routes.draw do

  root 'welcome#homepage'
  
  get '/login', to: 'sessions#new'
  post 'sessions', to: 'sessions#create'
  # get 'sessions/new_log_in'
  post '/logout', to: 'sessions#destroy'
  

  resources :user_plants
  resources :plants
  resources :users
  resources :sessions

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
