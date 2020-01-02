Rails.application.routes.draw do
  root 'home#index'

  resources :lists do
    resources :list_items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
