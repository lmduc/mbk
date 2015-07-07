Rails.application.routes.draw do
  root 'homes#index'

  resources :posts, only: [:new, :create, :show]

  resources :homes, only: [:index]
end
