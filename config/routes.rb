Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :bikes
    end
  end

  match 'appointments/create' => 'appointments#create', :via => :post
  resources :bikes
end
