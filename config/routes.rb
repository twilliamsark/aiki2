Aiki::Application.routes.draw do

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
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :videos

# shows the primary video associated with the applied technique
# /aikido?waza=15
# /aikido?waza=15&sort=format

# shows the specified video associated with the applied technique
# /aikido?waza=15&video=17
# /aikido?waza=15&video=17&sort=format
  match '/aikido', to: 'wazas#aikido', via: 'get'

  match '/video_signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  #AJAX Calls
  get "/search" => "wazas#search", as: :search
  get "/remote_waza" => "wazas#remote_waza", as: :remote_waza
end
