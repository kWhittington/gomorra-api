Rails.application.routes.draw do
  resources :outfits, except: [:new, :edit]
  resources :gangs, only: [:index, :show]
end
