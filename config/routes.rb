GaSchedulerApp::Application.routes.draw do
  resources :courses
  resources :campuses
  resources :rooms
  resources :users
  resources :homepage, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]

  get "/signup",    to: "users#new",        as: :signup
  get "/login",     to: "sessions#new",     as: :login
  delete "/logout", to: "sessions#destroy", as: :logout

  root :to => 'homepage#index'

  
end
