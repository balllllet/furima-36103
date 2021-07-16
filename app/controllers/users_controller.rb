class UsersController < ApplicationController

    def index
    end  
    
    def new
    end
  
    def create
    end
  
    def destroy
    end
  
    def edit
    end
  
    def update
      current_user.update(user_params)
    end  
  
    def show 
    end

    def user_params
      params.require(:user).permit(:nickname, :email, :encrypted_password, :family_name, :first_name, :family_name_reading, :first_name_reading, :birthday)
    end
  end
  

end 