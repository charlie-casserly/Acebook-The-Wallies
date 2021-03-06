# frozen_string_literal: true

Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do 
    resources :invitations
    get '/friends', to: 'users#friends'
  end


   root :to => 'sessions#new'
  
   resources :posts do
      resources :comments
      resources :likes
   end
end
