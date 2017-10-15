Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'works#home'

  resources :works

  resources :users, only:[:index, :new, :create]

  get '/login', to: 'sessions#login_form'

  post '/login', to: 'sessions#login'

  post '/logout', to: 'sessions#logout', as: 'logout'
end
