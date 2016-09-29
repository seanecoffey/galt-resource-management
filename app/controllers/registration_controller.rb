class RegistrationController < ApplicationController
    
    protected
    
    def update_resource(params)
        @user = User.find(current_user_id)
        
        @user.update_without_password(params)
    end
end
