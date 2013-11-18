CookbookApp::Application.routes.draw do
  root :to => 'pages#home'
  get '/about' => 'pages#about'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/ingredients_list' => 'ingredients#list'
  get '/measurements_list' => 'measurements#list'

  resources :cookbooks
  resources :recipes
  resources :ingredients, :only => [:new, :create, :destroy]
  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end
end
