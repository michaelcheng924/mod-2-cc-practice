Rails.application.routes.draw do
  resources :patients, :doctors, :appointments
end
