class SessionsController < ApplicationController

    def new
    end

    # def create
        # @user = User.find_by(email: params[:email])
        # if @user == nil 
        #     flash[:errors] = ["User with this password not found"]
        #     redirect_to login_path
        # else 
    #         if @user && @user.authenticate(params[:password])
    #             session[:user_id] = @user.id
    #             # flash[:notices] = ["Logged in!"]
    #             redirect_to root_path
    #         else 
    #             flash[:errors] = ["User with this password not found"]
    #             redirect_to login_path
    #         end
        # end
    # end
    def create 
        
        @user = User.find_by(email: params[:email])
    
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id 
          redirect_to root_path
        else 
          flash[:error] = "Password or Email did not match"
          redirect_to login_path
        end 
      end 

    

    def destroy
        reset_session
        redirect_to login_path
    end
end