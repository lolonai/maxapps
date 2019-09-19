Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home', as: 'home'

  resources :groupes, only: %i[show view edit update new create delete]
  get '/groupes', to: 'groupes#list', as: 'list'
  get '/sign_in/:id', to: 'groupes#sign_in', as: 'sign_group'
  post '/membre_add', to: 'groupes#membre_add' , as: 'membre_add'


  resources :albums, only: %i[show edit update new create delete]

  resources :photos, only: %i[show new create delete]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
