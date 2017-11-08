Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "restaurants#index"

  resources :restaurants , only: [:show, :index, :new, :create] do
    resources :reviews, only: [ :new, :create ]
  end
end
