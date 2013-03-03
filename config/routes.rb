Localbounties::Application.routes.draw do

  root  :to => "home#index"
  resources :bounties
  resources :tests

end
