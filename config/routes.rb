Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users
  
  get '/friends' => 'friends#index'
  get '/read_followers' => 'friends#read_followers'
  get '/read_following' => 'friends#read_following'
  post '/destroy_following' => 'friends#destroy_following'
  get '/read_people' => 'friends#read_people'
  get '/profile/:id' => 'friends#read_profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
