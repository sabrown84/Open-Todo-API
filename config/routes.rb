Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :lists, only: [:create, :update]
    end

    resources :lists, only: [:destroy] do
      resources :items, only: [:create, :update]
    end

    resources :items, only: [:destroy]
  end

  root 'welcome#index'
end
