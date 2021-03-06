Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show, :update, :destroy]
  resources :rooms, only: [:index, :create, :show, :update, :destroy]
  resources :plants, only: [:index, :show]
  resources :room_plants, only: [:index, :create, :destroy]
  resources :suggestions, only: [:index, :create]
  post '/login', to: 'users#login'
  get '/validate', to: 'users#validate'
  get '/my-rooms', to: 'users#my_rooms'
end
