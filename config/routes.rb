Rails.application.routes.draw do
  get 'users/new'

  root 'entertainment_item#index'
end
