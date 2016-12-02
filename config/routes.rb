Rails.application.routes.draw do
  get "admin" => "admin#index"
  put "admin/:id" => "admin#update"
  patch "admin/:id" => "admin#update"

  resources :posts
  devise_for :users
  root to: 'posts#index'
end
