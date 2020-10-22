class UserPlantsController < ApplicationController

    def new
        @user_plant = UserPlant.new
    
        @users = User.all
        @plants = Plant.all
      end 
    

    def index
        @user_plant = UserPlant.all
    end

    def show 
        @user_plant = UserPlant.find(params[:id])
    end

    def create
        user_plant = UserPlant.create(user_plant_params)
        redirect_to plant_path(user_plant.plant_id)
    end

    private

    def user_plant_params
        params.require(:user_plant).permit(:user_id, :plant_id, :review)
      end 
    
end
