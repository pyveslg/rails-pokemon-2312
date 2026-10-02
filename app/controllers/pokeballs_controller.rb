class PokeballsController < ApplicationController
  def create
    @pokeball = Pokeball.new(pokeball_params)
    @pokeball.pokemon = Pokemon.find(params[:pokemon_id])
    if @pokeball.save
      redirect_to trainer_path(@pokeball.trainer)
    else
      redirect_to pokemon_path(@pokeball.pokemon), status: :unprocessable_entity
    end
  end

  private

  def pokeball_params
    params.require(:pokeball).permit(:caught_on, :trainer_id, :location)
  end
end
