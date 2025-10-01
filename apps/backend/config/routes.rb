Rails.application.routes.draw do
  resources :peaks, only: [:index, :show]
end
