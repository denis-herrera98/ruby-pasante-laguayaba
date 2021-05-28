class CreatePokemonTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_trainers do |t|
      t.string :nombre
      t.string :apellido
      t.string :region
      t.string :string
      t.string :email

      t.timestamps
    end
  end
end
