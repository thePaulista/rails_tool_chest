Rails.application.routes.draw do
  resources :tools

  get '/login', to: "sessions#new"
end

