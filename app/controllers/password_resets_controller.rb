class PasswordResetsController < ApplicationController
    def new
    end
    
    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_later # or deliver_now
            # PasswordMailer - class
            # with - include parameters - who to send to
            # reset - reset mail with user
            # deliver_later - send this in background job, so our request can happen imediately
            # email takes some seconds to be sent
        end
        redirect_to root_path, notice: "If an account is found, we have sent a link to reset your password"
    end
end