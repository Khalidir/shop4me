Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'perfumes#index'
  resources:perfumes, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

    mount StripeEvent::Engine, at: '/stripe-webhooks'
end
