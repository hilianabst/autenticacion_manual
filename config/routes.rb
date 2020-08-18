Rails.application.routes.draw do
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # get 'users/new'

  # get 'users/create'

  # get 'users/show'
  resources :users, only: [:new, :create, :show]
  get 'sessions/new'
  post 'sessions/create'
  delete 'sessions/destroy'

  resources :stories
  get 'my_stories', to: 'stories#my_stories'
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
