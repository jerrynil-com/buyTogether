Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'pages#homepage'

  resources :stores do
    resources :items
  end

  resources :purchases do
    resources :orders
  end

  get 'history', to: 'orders#history'

  # get '/stores' => 'stores#index'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # # create new stores
  # get '/stores/new' => 'stores#new'
  # post '/stores' => 'stores#create'

  # #show a store
  # get '/stores/:id' => 'stores#show', as: 'store'

  # # update a store
  # get '/stores/:id/edit' => 'stores#edit', as: 'edit_store'
  # patch '/stores/:id' => 'stores#update', as: 'update_store'

  # #delete a store
  # delete 'stores/:id' => 'stores#destroy'
end
