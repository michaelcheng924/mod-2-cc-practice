Rails.application.routes.draw do
  resources :patients, only: [:index]
  resources :appointments, only: [:index]
end
