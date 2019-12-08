Rails.application.routes.draw do
  root 'root_pages#index'
  get 'root_pages/show'

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/session#destroy'
  end
end
