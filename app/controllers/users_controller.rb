class UsersController < ApplicationController
  
  
  def show
    @user = User.find(params[:id])
    
    add_breadcrumb "Home", "/"
    add_breadcrumb "Profile", "#"
  end
  
  def new
    # sign up form
    add_breadcrumb "", "#"
    @user = User.new 
  end
  
  def create
  
    add_breadcrumb "", "#"

   @user = User.new(user_params)
    
    #flash[:notice] = "User :" + @user.username + " - " +@user.email
    
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to WHO HIV Resistance Database!"
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
