Rails.application.routes.draw do
  get 'scores/index'
  get 'scores/show'
  root :to => 'pages#home'
  resources :pages
  resources :categories, only: [:index, :show, :update]
  # post 'questions/results/:id' => 'questions#results'
  # post 'questions/:id' => 'questions#scores', :as => "questions_scores"
  post '/categories' => 'categories#form'
  get '/categories/results/:id' => 'categories#results'
  # root :to => 'session#new'
    # get "/" => 'pages#home'
    # get '/users/profile' => 'users#profile'
  resources :users

  resources :relationships
  post '/relationships/:id' => 'relationships#show'

  resources :mailboxes
  get '/mailboxes/new/:id' => 'mailboxes#new'
  post '/mailboxes/mail/:id' => 'mailboxes#mail'
  get '/api/mailboxes/:id' => 'mailboxes#api_show'
  resources :conversations
  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform the login
  delete '/login' => 'session#destroy' #perform signout/'delete' the signin

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
