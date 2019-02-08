Rails.application.routes.draw do
  root :controller => 'products', :action => 'index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
end
