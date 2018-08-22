Rails.application.routes.draw do
  get 'appointments/new'
  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/edit'
  get 'appointments/create'
  resources :patients
  resources :appointments
  resources :doctors
end
