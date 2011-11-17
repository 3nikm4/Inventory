Inventory::Application.routes.draw do

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "users/:id/password" => "users#password", :as => "reset_pass"

  root :to => "home#index"

  resources :audits
  resources :disposable_types
  resources :disposables
  resources :patients
  resources :location_types
  resources :practices
  resources :locations
  resources :device_problem_statuses
  resources :device_problems
  resources :device_types
  resources :device_statuses
  resources :devices
  resources :groups
  resources :users do
    member do
      get 'password'
    end
  end
  resources :problems
  resources :sessions
  resources :home

end
