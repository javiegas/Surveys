class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    # sign up form
    @user = User.new 
  end
  
  def create
  
     @user = User.new(user_params)
    
    #flash[:notice] = "User :" + @user.username + " - " +@user.email
    
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render "new"
    end 

  end
  
  private

    def user_params
      params.require(:user).permit(:username, :name, :email, :password, :password_confirmation)
    end

end
