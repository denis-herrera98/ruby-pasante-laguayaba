class PokemonsController < ApplicationController
  before_action :set_pokemons, only: :index

  def index; end

  private

    def set_pokemons
      @pokemons = PokemonService.new().get_all
    end
end
