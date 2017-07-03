Rails.application.routes.draw do
  # root :to => 'questions#index'
  #
  resources :questions do
    resources :answers do
    end
  end

  # resources :users
  # resources :sessions
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
