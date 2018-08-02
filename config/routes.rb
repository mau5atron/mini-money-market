Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/login'
  get 'pages/register'

  # get 'devise/sessions/lender-sign-in', to: "lenders#lender_sign_in", as: "lender-sign-in"
  devise_for :borrowers, controllers: { registrations: 'registrations' }
  devise_for :lenders, controllers: { registrations: 'registrations' }

  # devise_scope :borrower do 
  # 	get ''
  # end

  # get '/borrowers' => 'pages#register'

  get 'dashboard' => 'dashboard#home'

  resources :dashboard
  # resources :borrowers
  # resources :lenders

  get '*path', to: redirect('/error')

end
