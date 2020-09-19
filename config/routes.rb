Rails.application.routes.draw do
  root to: "cooks#index"
  resources :cooks, only: [:index, :new, :create, :show, :destroy]
end
