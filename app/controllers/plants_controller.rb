class PlantsController < ApplicationController
    def index
        @plants = Plant.all
    end

    def show 
        @plant = Plant.find(params[:id])
    end

    private

    def plant_params
        params.require(:plant).permit(:name, :height, :light, :water_frequency)
    end
end
