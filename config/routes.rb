Rails.application.routes.draw do
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, :only => [:index, :show, :new, :create]

end
