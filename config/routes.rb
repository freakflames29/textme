Rails.application.routes.draw do

  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #users
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  resources :users, except: [:new,:create]

  #messages creeate
  post 'message', to: 'messages#create'

  # actioncable
  mount ActionCable.server, at: '/cable'
end
