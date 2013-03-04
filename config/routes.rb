Localbounties::Application.routes.draw do

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'register'}, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root  :to => "home#index"

  resources :bounties
  resources :tests


  namespace :admin do
  	resources :users
    resources :bounties
  end

  namespace :api do
    # resources :bounties
    match 'bounties/:id/available' => 'bounties#available'
    match 'bounties/:id/claim' => 'bounties#claim'
    match 'bounties/:id/complete' => 'bounties#complete'
    match 'bounties/:id/reset' => 'bounties#reset'
  end

end