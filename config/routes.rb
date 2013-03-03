Localbounties::Application.routes.draw do
  root  :to => "home#index"

  resources :tests

end
