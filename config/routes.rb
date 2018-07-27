Rails.application.routes.draw do

  devise_for :borrowers
  devise_for :lenders

  resources :borrowers
  resources :lenders
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
