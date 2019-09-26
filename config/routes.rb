Rails.application.routes.draw do
  get 'payments/create'
  devise_for :users, :controllers => { :registrations => "user_registrations" }
  resources :users
  resources :products do
    resources :comments
    resources :payments
  end
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  post 'simple_pages/thank_you' #contact form
  post 'payments/create' #new payment
  root 'simple_pages#landing_page' #set index.html as site's home page
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :orders, only: [:index, :show, :create, :destroy]

end
