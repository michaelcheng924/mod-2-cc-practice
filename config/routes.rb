Rails.application.routes.draw do
  resources :doctors, only: [:index, :show]
  resources :patients, only: [:index, :show]
  resources :appointments, only: [:index, :show, :new, :create, :edit, :update]
end
