Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :olympics, only: [ :index, :show, :update, :create, :destroy ]
      resources :users, only: [ :index, :show, :update, :destroy ]
      resources :responsable, only: [ :index ]
      resources :questions, only: [ :index, :show, :update, :create, :destroy ]
      resources :alternatives, only: [ :index, :show, :update, :create ]
      resources :subscriptions, only: [ :index, :show ]
    end
  end
end
