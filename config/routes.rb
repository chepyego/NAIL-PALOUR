Rails.application.routes.draw do
  resources :schedules
  resources :clients
  resources :manicurists
  resources :services
  resources :bookings

  namespace :settings do
    resource :password, only: [ :show, :update ]
    resource :profile, only: [ :show, :update ]

    root to: redirect("/settings/profile")
  end




    # constraints ->(request) { request.session[:user_id] && User.find_by(id: request.session[:user_id]&.admin?) } do
    # authenticate :user, ->(u) { u.admin? } do

    mount Avo::Engine, at: "/avo"
  # mount Avo::Engine, at: Avo.configuration.root_path
  # end

  # end
  resource :sign_up

  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "home#index"
  get "home#about_us", to: "home#about_us", as: :about_us
  get "home#contact_us", to: "home#contact_us", as: :contact_us

  get "bookings/:id/success", to: "bookings#success", as: "success_booking"
end
