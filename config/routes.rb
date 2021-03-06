Localbounties::Application.routes.draw do

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'register'}, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    # get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end
  match 'auth/facebook/callback', to: 'sessions#create'
  # devise_scope :user do
  #   get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  # end

  root  :to => "home#index"

  resources :bounties
  resources :tests


  namespace :admin do
  	resources :users
    resources :bounties
  end

  namespace :api do
    resources :bounties, :only => [:update, :create]
    match 'bounties/:id/accept' => 'bounties#accept'
    match 'bounties/:id/complete' => 'bounties#complete'
    match 'bounties/:id/close' => 'bounties#close'
  end

end