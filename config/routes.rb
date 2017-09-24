Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  post :run, to: 'commands#run'
  
  resources :games, only: [:create, :show]
end
