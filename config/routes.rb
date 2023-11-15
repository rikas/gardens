Rails.application.routes.draw do
  root to: 'gardens#index'

  resources :gardens do
    resources :plants, only: %i[create]
  end

  resources :plants, only: :destroy
end
