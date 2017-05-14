Rails.application.routes.draw do
  resources :roles
  devise_for :users
  resources :users
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
