class PokemonService

  def get_all
    HTTParty.get('https://pokeapi.co/api/v2/pokemon/?limit=100')['results']
  end

  def fetch_pokemon_data(url)
    HTTParty.get(url)
  end

end
