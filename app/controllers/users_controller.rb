class UsersController < ApplicationController
  def index
  end
  
  # Toggle admin  
  def toggle_admin
    @user = User.find params[:id]
    if @user.try(:admin?)
      @user.update_attribute :admin, false
    else
      @user.update_attribute :admin, true
    end
    redirect_to users_url
  end
  
  #delete accounts
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    if @user.destroy
      redirect_to users_url, notice: "user deleted"
    end
    
  end
      
  
end
