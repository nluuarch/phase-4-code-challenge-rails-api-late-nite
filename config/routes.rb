Rails.application.routes.draw do
resources :episodes, only: [:show, :index, :destroy]
resources :appearances, only: [:show, :index, :create]
resources :guests, only: [:show]


end
