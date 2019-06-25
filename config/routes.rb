Rails.application.routes.draw do
  root to: 'about#index'
  get 'contact', to: 'contact#index'
  post 'contact', to: 'contact#create'
  get 'thank_you', to: 'contact#thank_you'

  #resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
