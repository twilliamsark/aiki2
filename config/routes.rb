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

# shows the primary video associated with the applied technique
# /aikido?applied_technique=15
# /aikido?applied_technique=15&sort=format

# shows the specified video associated with the applied technique
# /aikido?applied_technique=15&video=17
# /aikido?applied_technique=15&video=17&sort=format
  match '/aikido', to: 'applied_techniques#aikido', via: 'get'
  match '/iaido', to: 'applied_techniques#iaido', via: 'get'

  match '/video_signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  #AJAX Calls
  get "/video_list" => "applied_techniques#video_list", as: :video_list
  get "/remote_show/:id" => "applied_techniques#remote_show", as: :remote_show
  get "/remote_applied_technique" => "applied_techniques#remote_applied_technique", as: :remote_applied_technique
end
