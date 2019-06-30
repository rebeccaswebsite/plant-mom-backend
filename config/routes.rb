Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :update, :destroy]
      resources :rooms, only: [:create, :show, :update, :destroy]
      resources :plants, only: [:index, :show]
      post '/login', to: 'users#login'
      get '/validate', to: 'users#validate'
      get '/myrooms', to: 'users#my_rooms'
    end
  end
end
