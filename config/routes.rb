Autoportal::Application.routes.draw do

  devise_for :users

  resources :marks, :advertisements

  root :to => "home#index"
end
