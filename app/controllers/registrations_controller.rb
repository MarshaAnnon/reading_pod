class RegistrationsController < Devise::RegistrationsController

    private
        def sign_up_params
            params.require(:user).permit(:email, :password, :password_confirmation, :name, :professional_field, :bio)
        end
    
        def account_update_params
            params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :professional_field, :bio)
        end

        def user_params
            params.require(:user).permit(:name, :professional_field, :bio, pod_attributes: [:pod_name])
        end

        
end

    