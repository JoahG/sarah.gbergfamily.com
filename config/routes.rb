Sblog::Application.routes.draw do
  get "tag/:tag", to: "posts#tag", :as => "tag"
  get "admin", to: "posts#admin", :as => "admin"
  post "sessions", to: "sessions#create", :as => "sessions"
  get "log_in", to: "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "feed", to: "posts#index", :as => "feed"

  resources :users
  resources :posts
  resources :sessions
  resources :comments
  resources :buttons

  root :to => 'posts#index'
end
