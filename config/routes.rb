Rails.application.routes.draw do
  resources :carts do
    resources :products, only: [:index, :show]
  end
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
