class PasswordResetsController < ApplicationController
    def new
    end
    
    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_later # or deliver_later
            # PasswordMailer - class
            # with - include parameters - who to send to
            # reset - what is send
            # deliver_later - send this in background job, so our request can happen imediately
            # email takes some seconds to be sent
        end
        redirect_to root_path, notice: "If an account is found, we have sent a link to reset your password"
    end

    def edit
        @user = User.find_signed!(params[:token], purpose: "password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to sign_in_path, alert: "Your token has expired. Please try again."    
    end
end