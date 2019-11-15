Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'accounts/index'
  get 'accounts/new'
  get 'accounts/show'
  post 'accounts/create'

  get 'logs/index'
  get 'logs/new'
  get 'logs/show'
  post 'logs/create'

  get 'posts/index'
  get 'posts/new'
  get 'posts/show'
  post 'posts/create'

  get 'users/index'
  get 'users/new'
  get 'users/show'
  post 'users/create'
end
