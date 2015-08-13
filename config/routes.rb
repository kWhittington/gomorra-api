Rails.application.routes.draw do
  resources :spells, except: [:new, :edit]
  resources :outfits, except: [:new, :edit]
  resources :gangs, only: [:index, :show]
end
