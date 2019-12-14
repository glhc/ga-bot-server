Rails.application.routes.draw do
  resources :users
  
  get '/friends' => 'friends#index'
  get '/read_followers' => 'friends#read_followers'
  get '/read_following' => 'friends#read_following'
  post '/destroy_following' => 'friends#destroy_following'
  get '/read_people' => 'friends#read_people'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
