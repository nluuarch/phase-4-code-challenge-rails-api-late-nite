Rails.application.routes.draw do
    resources :episodes, only: [:index, :show, :destroy]
    resources :guests, only: [:index]
    resources :appearances, only: [:create]
end
