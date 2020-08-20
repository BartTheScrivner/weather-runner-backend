Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_preferences 
      resources :friendships 
      resources :runs 
      resources :users, except: :create
    end
  end

  post "api/v1/login", to: "api/v1/auth#create"
  post "api/v1/signup", to: "api/v1/users#create"
  get "display" => "display#index", :as => "display"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
