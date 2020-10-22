class PlantsController < ApplicationController

    def index
        @plants = Plant.all
    end

    def show 
        @plant = Plant.find(params[:id])
        @user = User.find(session[:user_id])
    end

    def destroy 
        @plant = Plant.find(params[:id])
        @plant.destroy 
    
        redirect_to root_path
      end
    

    private

    def plant_params
        params.require(:plant).permit(:name, :height, :light, :water_frequency)
    end
end
