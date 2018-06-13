Rails.application.routes.draw do
  resources :learnings
  resources :orders
  resources :games
  resources :series
  resources :venues
  resources :teams
  get '/get_cities/:country_code', to: 'venues#get_cities'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
