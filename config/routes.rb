Rails.application.routes.draw do
<<<<<<< HEAD


  resources :users, only: [:show]
  resources :events, only: [:show]
=======
  # devise_for :users
  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :registrations => 'users/registrations',
  }
  resources :events
  resources :users, only: [:show]
>>>>>>> event_page

  root 'root_pages#index'
  get 'root_pages/show'
end
