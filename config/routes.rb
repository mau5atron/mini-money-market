Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/login'
  get 'pages/register'
  
  # get 'devise/sessions/lender-sign-in', to: "lenders#lender_sign_in", as: "lender-sign-in"
  devise_for :borrowers
  devise_for :lenders

  # resources :borrowers
  # resources :lenders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
