class UsersController < ApplicationController
  def index
  end
  
  def make_admin
    user = User.find params[:id]
    user.update_attribute :admin, true 
    redirect_to users_url
  end
  
  def remove_admin
    user = User.find params[:id]
    user.update_attribute :admin, false
    redirect_to users_url
  end
end
