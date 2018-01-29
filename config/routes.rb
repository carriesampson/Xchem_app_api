Rails.application.routes.draw do
  resources :additives
  resources :chemicals
  resources :products
  resources :brands
  root 'welcome#index'
end
