Inventory::Application.routes.draw do

<<<<<<< HEAD

  post "dynamic_devices/:id" => "patient_assignments#dynamic_devices", :as => "dynamic_devices"
  post "dynamic_patients/:id" => "patient_assignments#dynamic_patients", :as => "dynamic_patients"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "users/:id/password" => "users#password", :as => "reset_pass"
  get "reports/all_locations_summary" => "reports#all_locations_summary", :as => "all_locations_summary"
  get "reports/location_summary/:id" => "reports#location_summary", :as => "location_summary"
  get "reports/problematic_devices" => "reports#problematic_devices", :as => "problematic_devices"
  get "reports/devices_in_use" => "reports#devices_in_use", :as => "devices_in_use"
  get "device_by_location/:id" => "locations#devices_report", :as => "device_by_location"

  root :to => "home#index"
  
  resources :audits
  resources :disposable_types
  resources :disposables
  resources :devices
  resources :device_problem_statuses
  resources :device_problems
  resources :device_tests
  resources :device_types
  resources :device_statuses
  resources :groups
  resources :home
  resources :locations
  resources :location_assignments
  resources :location_types
  resources :patients
  resources :patient_assignments
  resources :practices
  resources :sessions
=======
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
>>>>>>> 53a75de68dd6fca626b398c21d1923a2b7056408
  resources :users do
    member do
      get 'password'
    end
  end
<<<<<<< HEAD

=======
  resources :problems
  resources :sessions
  resources :home
>>>>>>> 53a75de68dd6fca626b398c21d1923a2b7056408

end
