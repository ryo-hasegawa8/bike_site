Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :registrations => 'users/registrations',
  }
  resources :events do
    resources :comments, only: [:create]
    resources :attendances, only: [:create, :destroy]
  end
  resources :users, only: [:show]
  root 'root_pages#index'
  get 'root_pages/show'
end
