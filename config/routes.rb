Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show, :update, :destroy]
  resources :rooms, only: [:create, :show, :update, :destroy]
  resources :plants, only: [:index, :show]
  resources :suggestions, only: [:index]
  post '/login', to: 'users#login'
  get '/validate', to: 'users#validate'
  get '/my-rooms', to: 'users#my_rooms'
end
