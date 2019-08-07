Rails.application.routes.draw do
  resources :users
  # get '/profile', to: 'users#profile'
  post '/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
