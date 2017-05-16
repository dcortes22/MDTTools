Rails.application.routes.draw do
  resources :types
  resources :components
  resources :sections
  resources :samples
  resources :roles
  devise_for :users
  resources :users
  root to: 'welcome#index'

  get '/app/:token', to: 'samples#configuration', defaults: {format: :json}, :as => :token

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
