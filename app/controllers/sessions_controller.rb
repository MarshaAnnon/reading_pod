class SessionsController < Devise::RegistrationsController

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && User.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path
        else
            render :new
        end
    end

    def destroy
        session.destroy
        redirect_to new_user_session_path
    end
end