Rails.application.routes.draw do
  resources :proposals, only: :create
end
