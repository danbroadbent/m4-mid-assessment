Rails.application.routes.draw do
  root to: "links#index"
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :links, only: [:index, :create, :edit, :update]

  namespace :api do
    namespace :v1 do
      resources :links, only: [:create]
    end
  end
end
