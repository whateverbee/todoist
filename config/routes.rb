Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  resources :list do
    resources :list_items
  end
end
