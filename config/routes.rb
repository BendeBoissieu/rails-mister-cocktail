Rails.application.routes.draw do
  get 'doses/new'
  get 'cocktails/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doses, :cocktails
  root to: 'cocktails#index'

end
