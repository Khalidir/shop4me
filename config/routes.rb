Rails.application.routes.draw do
  devise_for :users
  root 'perfumes#index'
  resources:perfumes, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

end
