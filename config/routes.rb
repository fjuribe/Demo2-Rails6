Rails.application.routes.draw do

devise_for :users

root 'home#index'


resources :images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# get 'probar', to: 'controls#saludo'
end
