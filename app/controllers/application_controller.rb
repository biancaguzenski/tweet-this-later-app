class ApplicationController < ActionController::Base
    before_action :set_current_user
    # before is a method that makes sure set_current_user is done before any action 
    
    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
            # changed this line: @user = User.find_by(id: session[:user_id])
            # create current model
        end
    end
end
