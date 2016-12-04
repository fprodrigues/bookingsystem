Rails.application.routes.draw do
  resources :buzs
  resources :calendars
  root "calendars#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
