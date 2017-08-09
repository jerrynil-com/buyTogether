Rails.application.routes.draw do
  root 'pages#homepage'

  get '/stores' => 'stores#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # create new stores
  get '/stores/new' => 'stores#new'
  post '/stores' => 'stores#create'
end
