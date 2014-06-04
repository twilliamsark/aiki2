Aiki::Application.routes.draw do

  # Active Admin
  ActiveAdmin.routes(self)
  namespace :admin do
    resources :applied_techniques do
      resources :videos
    end
  end

  #Aiki Video Library
  root 'applied_techniques#aikido'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :applied_techniques

  match '/aikido', to: 'applied_techniques#aikido', via: 'get'
  match '/iaido', to: 'applied_techniques#iaido', via: 'get'

  match '/video_signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  #AJAX Calls
  get "applied_techniques/video_list"
  get "applied_techniques/remote_show/:id" => "applied_techniques#remote_show", as: :remote_show
end
