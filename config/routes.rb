Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  root 'welcome#index'
  get 'welcome/index', to: 'welcome#index'



end
