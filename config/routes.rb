Rails.application.routes.draw do
  root "splash#index"
   devise_for :users
   resources :user
   resources :categories
   resources :transactions
   
    devise_scope :user do
     get '/users/sign_out', to: 'devise/sessions#destroy'
   end
 end