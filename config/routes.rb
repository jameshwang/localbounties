Localbounties::Application.routes.draw do

  root  :to => "home#index"

  resources :bounties
  resources :tests


  namespace :admin do
  	resources :users
    resources :bounties
  end

  namespace :api do
    resources :bounties
  end

end