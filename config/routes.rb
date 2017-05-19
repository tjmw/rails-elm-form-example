Rails.application.routes.draw do
  root to: "homepage#show"

  resources :users, only: :create
end
