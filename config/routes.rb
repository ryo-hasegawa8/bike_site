Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :users ,only:[:show]

  root 'root_pages#index'
  get 'root_pages/show'

end
