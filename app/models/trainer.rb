class Trainer < ApplicationRecord
  has_one_attached :photo

  has_many :pokeballs
  has_many :pokemons, through: :pokeballs

  # @trainer.pokeballs
  # @trainer.pokemons
end
