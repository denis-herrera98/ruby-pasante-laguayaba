class RemoveStringFieldCapturedPokemon < ActiveRecord::Migration[5.2]
  def change
    remove_column :pokemon_trainers, :string
  end
end
