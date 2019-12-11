Rails.application.routes.draw do


  resources :users, only: [:show]
  resources :events, only: [:show]

  root 'root_pages#index'
  get 'root_pages/show'

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/session#destroy'
  end
end
