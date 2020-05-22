Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats
  get 'flat?query=[:keyword]', to: 'flats#query'
  root 'flats#index'
end
