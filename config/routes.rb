Rails.application.routes.draw do

  scope module: :ecom, path: 'ecom' do
    resources :products
    root to: 'home#index'
  end
  # root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
