Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  mount API::Base, at: "/"
  mount GrapeSwaggerRails::Engine => '/documentation'

  root to: 'application#index'
end
