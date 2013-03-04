Localbounties::Application.routes.draw do

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