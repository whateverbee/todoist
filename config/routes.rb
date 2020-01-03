Rails.application.routes.draw do
  resources :lists do
    resources :list_items
  end
  root 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
