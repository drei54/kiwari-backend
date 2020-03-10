Rails.application.routes.draw do
  get '/', to: 'application#index'
  get 'products/', to: 'products#index'
  get 'products/:id', to: 'products#show', as: 'product'
  post 'products', to: 'products#create'
  put 'products/:id', to: 'products#update', as: 'update_product'
  delete 'products/:id', to: 'products#destroy', as: 'destroy_product'
  # resource :product, only: [:show, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
