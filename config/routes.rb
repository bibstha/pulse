Rails.application.routes.draw do
  root "pages#welcome"
  resources :vendor_price_quotes
  resources :products
  resources :vendors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
