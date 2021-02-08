Rails.application.routes.draw do
  root to: "main#index"

  get "about-us", to: "about#index", as: :about
  get 'sign_up', to: 'registrations#new'
  post 'users ', to: 'registrarions#create'
end
