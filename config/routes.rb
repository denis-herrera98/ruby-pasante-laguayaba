Rails.application.routes.draw do
  resources :pokemon
  
  root "pokemon#index"
end
