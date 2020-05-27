module ApplicationHelper

    
    #def provider
    #    provider = user.provider
    #end
#
    #def provider_sign_in?
    #    user = current_user
    #    binding.pry
    #    provider = current_user.provider
    #    if current_user.provider == nil
    #        "Hi, #{user}! Welcome to the Reading Pod"
    #    else
    #        "Hi! Welcome to the Reading Pod"
    #    end
    #end


    #def provider_edit(provider)
    #    @user = current_user
    #    if current_user.provider == nil
    #        redirect_to edit_user_registration_path
    #    else
    #        flash[:notice] = "You must log in with an account to edit your profile"
    #        redirect_to root_path
    #    end 
    #end
end
# if user provider column nil this goes in the view
# @user.provider == nil show the edit else do not show the edit