Rails.application.routes.draw do
  post 'searches', to: 'searches#index'
  get 'searches/show'
  post 'searches/create', to: 'searches#create'
  get 'searches/destroy'
  get 'analytics', to: 'analytics#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'articles#index'
end
