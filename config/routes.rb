Rails.application.routes.draw do

  root 'home#index'
  resources :pokemon_trainers, :pokemons

end

