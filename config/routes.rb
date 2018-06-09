Rails.application.routes.draw do
  get 'doses/new'
  get 'cocktails/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # To show the index on the first page
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :edit, :new, :create, :destroy] do
    resources :doses, only: [:destroy, :create]
  end
  resources :ingredients, only: [:create]


end


