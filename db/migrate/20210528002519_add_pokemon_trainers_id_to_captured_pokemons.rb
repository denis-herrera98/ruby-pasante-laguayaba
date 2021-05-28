class AddPokemonTrainersIdToCapturedPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :captured_pokemons, :trainer_id, :integer
    add_index :captured_pokemons, :trainer_id
  end
end
