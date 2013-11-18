CookbookApp::Application.routes.draw do
  root :to => 'pages#home'
  get '/about' => 'pages#about'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/ingredients_list' => 'ingredients#list'

  resources :cookbooks
  get '/cookbooks/:id/template' => 'cookbooks#template'

  resources :recipes
  resources :ingredients, :only => [:new, :create, :destroy]
  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end
end
