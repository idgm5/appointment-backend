Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :bikes
      resources :appointments
    end
  end

  match 'api/v1/appointments/create' => 'appointments#create', :via => :post
  resources :bikes
  resources :appointments
end
