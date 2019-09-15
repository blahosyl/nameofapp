Rails.application.routes.draw do
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  root 'simple_pages#index' #set index.html as site's home page
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
