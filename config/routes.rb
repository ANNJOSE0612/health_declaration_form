Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #get "/health_declaration_forms", to: "health_declaration_forms#index"
  root 'health_declaration_forms#new'

  get 'formdata' , to: 'health_declaration_forms#index'
  resources :health_declaration_forms
   
end
