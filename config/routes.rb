Rails.application.routes.draw do

  root 'pages#home'
  get '/help', to: 'pages#help'


  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route("/") 
  # root "articles#index"
end
