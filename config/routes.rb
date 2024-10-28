Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'transactions#index'
  get '/search' => 'transactions#search'
  get '/convert' => 'transactions#convert_isbn'
end
