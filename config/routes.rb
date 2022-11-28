Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  resources :categories
  resources :products
  resources :users
  post 'search', to: 'products#search'
  get 'show', to: 'categories#showProducts'
  get 'product' ,to: 'products#product_by_price'

  end
end
resources :categories
resources :products

end
