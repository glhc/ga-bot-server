Rails.application.routes.draw do
<<<<<<< HEAD
  post 'user_token' => 'user_token#create'
=======
  resources :chatrooms
>>>>>>> chatroom
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
