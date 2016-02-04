Rails.application.routes.draw do


  root 'sessions#new'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
  get   'new_item' => 'entertainment_items#new'
  post  'new_item' => 'entertainment_items#create'
  get   'item'     => 'entertainment_items#show'
  get   'edit'     => 'entertainment_items#edit'
  post  'edit'    =>  'entertainment_items#update'
  post  'destroy' =>  'entertainment_items#destroy'
  
  resources :entertainment_items do
    post :update_row_order, on: :collection
  end
  
  resources :users
end
