Rails.application.routes.draw do
  resources :hoagies
  get 'welcome/index'
  root 'welcome#index'
  resources :hoafies
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
