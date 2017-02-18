Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'product#index'
  devise_for :users

  namespace :admin do
    resources :products
  end

  resources :products do
    member do
      post :add_to_cart
    end
  end

  resources :carts do
    member do
      delete :delete_all_cart_items
    end
  end

end
