Rails.application.routes.draw do
  resources :user_preferences
  resources :friendships
  resources :runs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
