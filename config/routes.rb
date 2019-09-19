Rails.application.routes.draw do
  resources :products
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  root 'products#index' #set products/index.html.erb as site's home page
  # root 'simple_pages#landing_page' #set landing_page.html.erb as site's home page
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :orders, only: [:index, :show, :create, :destroy]

end
