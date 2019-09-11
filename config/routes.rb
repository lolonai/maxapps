Rails.application.routes.draw do
  get 'albums/show'
  get 'albums/new'
  get 'albums/create'
  get 'albums/update'
  get 'albums/delete'
  get 'albums/edit'
  get 'photos/new'
  get 'photos/create'
  get 'photos/delete'
  get 'photos/show'
  get 'groupes/show'
  get 'groupes/view'
  get 'groupes/edit'
  get 'groupes/delete'
  get 'groupes/update'
  get 'groupes/create'
  get 'groupes/new'
  get 'groupes/name'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
