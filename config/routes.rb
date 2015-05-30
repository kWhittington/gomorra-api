Rails.application.routes.draw do
  resources :gangs, only: [:index, :show]
end
