Rails.application.routes.draw do
  resources :item_prices
  resources :prices
  resources :items

  resources :stores

  # get 'stores' => 'stores#index', as: 'stores'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  resources :users 
  #,only: [:index, :show, :create, :destroy]
    get '/' => 'users#index'
    post '/sessions' => 'sessions#create'
    get 'signup' => 'users#new', as: 'signup'
    get '/dashboard' => 'shops#index'
    # get /me  => "users#show" #for authentication on front end.
    # delete '/logout' =>"sessions/destroy"

  # resources :sessions, only: [:create]
  # resources :users

  # delete :logout, to: "sessions#logout"
  # get :logged_in, to: "sessions#logged_in"
  
  # root to: "static#home"
end
