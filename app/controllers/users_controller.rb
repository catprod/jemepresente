class UsersController < ApplicationController
    def new
      #user=User.new 
    end

    def create
        user=User.new
        user.username=params["user_name"]
        user.bio=params["bio"] 
        user.save
        redirect_to action: 'show', id: user.id
    end
  
    def list
        @users = User.all
        
    end



    def show
        @user = User.find(params['id'])
    end
    
end
  