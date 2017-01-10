Rails.application.routes.draw do
  get 'categories/:id', to:'categories#show',as: 'show_category'

  resources :articles

  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
