Rails.application.routes.draw do
  root to: "cooks#index"
  resources :cooks, only: :index
end
