class PokemonsController < ApplicationController
  before_action :set_pokemons, only: :index

  def index

    if params[:url]
      catch_pokemon(params[:url])
    end

  end

  private

  def set_pokemons
    @pokemons = PokemonService.new.get_all
  end

  private

  def catch_pokemon(url)

      @pokemon_all_data = PokemonService.new.fetch_pokemon_data(url)

      pokemon_types = []
      @pokemon_type = @pokemon_all_data['types'].each { |type| pokemon_types.push(type['type']['name'])}
      @pokemon_name = @pokemon_all_data['name']
      @to_fetch_img = @pokemon_all_data['forms'][0]['url']
      @url_img = PokemonService.new.fetch_pokemon_data(@to_fetch_img)['sprites']['front_default']

      @pokemon = CapturedPokemon.new
      @pokemon.api_version = url
      @pokemon.name = @pokemon_name
      @pokemon.first_slot = @pokemon_type[0]['type']['name']
      if @pokemon_type[1]
      @pokemon.second_slot = @pokemon_type[1]['type']['name']
      end
      @pokemon.img_url = @url_img

      @pokemon.save

  end
end
