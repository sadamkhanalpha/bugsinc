Rails.application.routes.draw do
  devise_for :users
  get 'bugs/index'

  get 'bugs/create'

  get 'bugs/new'

  get 'bugs/delete'

  get 'projects/index'

  get 'projects/create'

  get 'projects/new'

  get 'projects/edit'

  get 'projects/delete'

  get 'users', to: 'users#index', as: 'users'
  get 'users/new', to: 'users#new', as: 'new_user'
  get 'users/:id', to: 'users#show', as: 'user'

  post 'users', to: 'users#create'

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'

  patch 'users/:id', to: 'users#update'

  delete 'users/:id', to: 'users#destroy', as: 'delete_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
