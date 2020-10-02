Rails.application.routes.draw do
  resources :tweets do
  	resources :likes
  end
  
  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'tweets/new', to:'tweets#create'
  root to: 'homes#index'
end
