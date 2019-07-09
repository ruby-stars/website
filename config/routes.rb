Rails.application.routes.draw do
  root to: 'about#index'
  get 'contact', to: 'contact#new'
  post 'contact', to: 'contact#create'

  #resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
