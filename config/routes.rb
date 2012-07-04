Autoportal::Application.routes.draw do
  resources :marks

  devise_for :users

  root :to => "home#index"
end
