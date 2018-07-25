class UsersController < ApplicationController
    
    def new 
        @User = User.new
    end 
    
    def create
        @user = User.new 
        if @user.save(user_params)
          flash[:notice] = "Sign UP Sccessfully"
        else
          flash[:alert] = "Error creating new user!"
          render :new
        end
    end 
    
    def edit 
    
    end 
    def update 
    
    end 
    
  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password)
  end
end
