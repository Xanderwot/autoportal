Autoportal::Application.routes.draw do
  resources :marks, :advertisements

  devise_for :users

  root :to => "home#index"
end
