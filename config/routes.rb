Rails.application.routes.draw do
  # get 'users/index'

  # get 'users/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  
end
