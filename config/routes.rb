Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_preferences, 
      resources :friendships, 
      resources :runs, 
      resources :users, :except[:create]
    end
  end

  post "/login", to: "auth#create"
  post "/signup", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
