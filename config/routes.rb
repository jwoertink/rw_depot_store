Depot::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :products, :only => [:index, :show]
  resources :line_items, :only => [:create]

  root :to => "site#index"
end
