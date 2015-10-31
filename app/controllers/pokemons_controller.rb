class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(param[:id])
		pokemon.trainer_id = current_trainer().id
		pokemon.save
		redirect_to_root_path
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		trainer_id = current_trainer().id
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.health = 100
		@pokemon.level = 1 
		@pokemon.trainer_id = trainer_id
		if @pokemon.save
			redirect_to_trainer_path(id: current_trainer().id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to_root_path
		end
	end

	def update
		@pokemon = Pokemon.find(params[:id])
		if @pokemon.update_attributes(params[:pokemon])
		else
		end
		redirect_to_trainer_path(id: current_trainer().id)
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
