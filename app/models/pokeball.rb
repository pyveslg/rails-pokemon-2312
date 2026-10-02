class Pokeball < ApplicationRecord
  belongs_to :trainer
  belongs_to :pokemon

  # @pokeball.trainer => Trainer
  # @pokeball.pokemon => Pokemon
end
