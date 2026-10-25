
Rails.application.routes.draw do

  # ==========================================
  # ACTIVE ADMIN ROUTES
  # ==========================================

  # Handles administrator authentication.
  devise_for :admin_users, ActiveAdmin::Devise.config

  # Provides routes for the Active Admin dashboard.
  ActiveAdmin.routes(self)


  # ==========================================
  # CUSTOMER RELATION MANAGER ROUTES
  # ==========================================

  # Homepage - display all customers.
  root "customers#index"

  # Display customers in alphabetical order.
  get "customers/alphabetized", to: "customers#alphabetized"

  # Display customers without email addresses.
  get "customers/missing_email", to: "customers#missing_email"


  # ==========================================
  # RAILS HEALTH CHECK
  # ==========================================

  get "up" => "rails/health#show", as: :rails_health_check

end
