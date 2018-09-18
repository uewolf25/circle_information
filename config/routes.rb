Rails.application.routes.draw do
  post "users/create" => "users#create"
  get 'signup' => "users#new"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"

  get "post/index" => "post#index"
  get "post/new" => "post#new"
  post "post/create" => "post#create"

  get "/" => "home#top"
  get "/about" => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
