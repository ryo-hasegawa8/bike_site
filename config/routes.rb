Rails.application.routes.draw do

  root 'root_pages#index'
  get 'root_pages/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
