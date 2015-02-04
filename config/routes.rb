Aiki::Application.routes.draw do

  # get "password_resets/new"
  # Active Admin
  ActiveAdmin.routes(self)
  namespace :admin do
    resources :wazas do
      resources :videos
    end
  end

  #Aiki Video Library
  root 'wazas#aikido'

  resources :users do
    member do
      get 'change_password'
      put 'save_password'
    end
    resources :waza_formats do
      resources :user_notes
      resources :review_notes
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :videos
  resources :password_resets

# shows the primary video associated with the applied technique
# /aikido?waza=15
# /aikido?waza=15&sort=format

# shows the specified video associated with the applied technique
# /aikido?waza=15&video=17
# /aikido?waza=15&video=17&sort=format
  match '/aikido', to: 'wazas#aikido', via: 'get'
  match '/master_view', to: 'wazas#master_view', via: 'get'
  match '/video_signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  #AJAX Calls
  get "/search" => "wazas#search", as: :search
  get "/remote_waza" => "wazas#remote_waza", as: :remote_waza

  #API
  namespace :api, defaults: {format: 'json'} do
    resources :wazas, only: [:index, :show]
    get 'wazas/:id/formats/:format_id', to: 'wazas#show_waza_format', via: 'get', as: :waza_format
  end
end
