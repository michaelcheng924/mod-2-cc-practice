Rails.application.routes.draw do
  resources :patients
  resources :appointments
  resources :doctors
end
