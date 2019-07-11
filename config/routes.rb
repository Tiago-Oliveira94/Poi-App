Rails.application.routes.draw do

  get 'pois/new_distance', to: 'pois#new_distance'
  post 'pois/new_distance', to: 'pois#calculate_distance'
  get 'pois/result_distance', to: 'pois#result_distance'

  
  resources :pois

end
