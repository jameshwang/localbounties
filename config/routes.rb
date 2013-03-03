Localbounties::Application.routes.draw do

  root  :to => "home#index"
  resources :bounties
  resources :tests


  namespace :admin do
    resources :bounties
  end
end