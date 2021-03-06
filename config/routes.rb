Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :bikes
      resources :appointments
    end
  end

  resources :bikes, only: [:index]
  resources :appointments, only: [:index, :create]
end
