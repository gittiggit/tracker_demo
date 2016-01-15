Rails.application.routes.draw do
  get 'users/my_portfolio'

  devise_for :users
  get "welcomes/index"
	root "welcomes#index"
  get "my_portfolio", to: "users#my_portfolio"
end
