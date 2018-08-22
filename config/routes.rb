Rails.application.routes.draw do
  resources :patients, only: [:index, :show]
  resources :appointments, only: [:index, :new, :create]
end
