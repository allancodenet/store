Rails.application.routes.draw do
  devise_for :users
  
  
  resources :products
  resource :cart do
    post 'add/:id', to: 'carts#add', as: 'add'
    get :checkout
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"

end
