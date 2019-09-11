Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'pages#home', as: 'home'

  resources :groupes, only: %i[show view edit update new create delete]

  resources :albums, only: %i[show edit update new create delete]

  resources :photos, only: %i[show new create delete]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
