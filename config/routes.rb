Rails.application.routes.draw do

  if Rails.env.production?
     devise_for :admins, :controllers => { :registrations => "registrations" } 
   else
     devise_for :admins
   end
  root 'site#index'

  namespace :admin do
    resources :places
    resources :prices
    resources :amenities
    root 'admin#dashboard'
    get 'dashboard' => 'admin#dashboard'
  end
  get 'comodidades' => 'site#comodidades'
  get 'landing/:id' => 'site#landing', as: :landing

end
