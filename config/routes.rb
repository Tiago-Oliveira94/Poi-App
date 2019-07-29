Rails.application.routes.draw do

  root to: 'users#new'

  resources :users
  resources :pois

  get 'sessions/new'
  get 'pois/new_distance', to: 'pois#new_distance'
  post 'pois/new_distance', to: 'pois#calculate_distance'
  get 'pois/result_distance', to: 'pois#result_distance'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
end
