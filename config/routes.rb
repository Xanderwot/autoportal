Autoportal::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :marks, :advertisements

  root :to => "home#index"
end
