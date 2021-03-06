Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home', as: 'home'

  resources :groupes, only: %i[show view edit update new create delete] do
    resources :photos, only: %i[show new create delete index]
    resources :messageries, only: %i[index]
    resources :messages, only: %i[create]
  end

  get '/groupes', to: 'groupes#list', as: 'list'
  get 'groupes/:id/membres_list', to: 'groupes#membre_list', as: 'membre_list'
  get '/sign_in/:id', to: 'groupes#sign_in', as: 'sign_group'
  post '/membre_add', to: 'groupes#membre_add' , as: 'membre_add'

  resources :albums, only: %i[show edit update new create delete]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
