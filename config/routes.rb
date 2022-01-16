Rails.application.routes.draw do

  # concern :attachable do
  #   resources :attachments, only: :create
  # end
  
  resources :blogs

  devise_for :users
  devise_scope :user do  
    get "/login", :to => "devise/sessions#new" # Add a custom sign in route for user sign in
    # get "/logout", :to => "devise/sessions#destroy" # Add a custom sing out route for user sign out
    get "/register", :to => "devise/registrations#new" # Add a Custom Route for Registrations
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'pages/homepage'
  root to: 'pages#home'
  # get "/blogs", to: "blogs#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
