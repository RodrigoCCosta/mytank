Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :cars, only: [:create, :show, :new, :edit, :update, :index]
  resources :tanks, only: [:create, :show, :new, :edit, :update, :index]
end
