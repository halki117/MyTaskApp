Rails.application.routes.draw do
  root to:  'lists#index'
  resources :lists, only: [:index, :new, :create, :edit, :update, :destroy]
end
