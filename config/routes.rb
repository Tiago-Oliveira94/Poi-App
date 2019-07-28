Rails.application.routes.draw do

  get 'sessions/new'
  get 'users/new'
  get 'pois/new_distance', to: 'pois#new_distance'
  post 'pois/new_distance', to: 'pois#calculate_distance'
  get 'pois/result_distance', to: 'pois#result_distance'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'

  resources :pois
  resources :users
end
