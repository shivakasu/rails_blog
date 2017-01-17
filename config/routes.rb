Rails.application.routes.draw do


  get 'users/:id', to:'userinfos#show',as: 'user_detail'

  #article-icon-bar
  post 'bookmarks/create'
  delete 'bookmarks/destroy'
  post 'unlike_articles/create'
  delete 'unlike_articles/destroy'
  post 'like_articles/create'
  delete 'like_articles/destroy'



  get 'categories/:id', to:'categories#show',as: 'show_category'


  resources :articles

  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

end
