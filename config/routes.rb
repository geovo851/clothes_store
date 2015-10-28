Rails.application.routes.draw do
  resources :messages
  resources :deliveries, only: [:edit, :update]
  resources :orders
  resources :products_orders
  post 'store/cart/update_quantity' => 'products_orders#update_quantity', 
        as: 'cart_update_quantity'

  resources :carts
  get 'carts' => 'orders#carts', as: 'orders_carts'
  
  resources :products
  resources :categories

  get 'admins' => 'admins#index', as: 'admins'

  devise_for :users

  get 'services' => 'store#services', as: 'store_services'
  get 'contact' => 'store#contact', as: 'store_contact'

  get 'store/cart/:id' => 'store#cart', as: 'store_cart'
  get 'search/:id' => 'store#search_products', as: 'store_search_products'
  get 'product/:id' => 'store#product', as: 'store_product'

  root 'store#index'
end
