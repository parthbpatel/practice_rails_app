Rails.application.routes.draw do
  get    '/signup', 	to: 'customers#new'
  post   '/signup',   to: 'customers#create'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'


  resources :customers do
       resources :bookings do
       #resources :cities
     end
   end
  resources :cleaners
  root 'sessions#new'
end
