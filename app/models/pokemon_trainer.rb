class PokemonTrainer < ApplicationRecord
  # has_many :pokemon_trainers
  validates :email,  presence: { message: 'Debe escribir el email'}
  validates :nombre, presence: { message: 'Debe escribir el nombre'}
  validates :apellido, presence: { message: 'Debe escribir el apellido'}
  validates :region, presence: { message: 'Debe escribir la region'}
end
