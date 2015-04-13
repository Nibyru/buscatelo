Rails.application.routes.draw do
  devise_for :admins
  root 'site#index'

  namespace :admin do
    root 'admin#dashboard'
    get 'dashboard' => 'admin#dashboard'
  end
  get 'comodidades' => 'site#comodidades'
  get 'landing' => 'site#landing'

end
