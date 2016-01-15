Rails.application.routes.draw do

  devise_for :users
  get "welcomes/index"
	root "welcomes#index"
  # get "my_portfolio", to: "users#my_portfolio"
   resources :stocks, only:[:index, :show]
   get "search_stocks", to: "stocks#search"
  resources :users
end
