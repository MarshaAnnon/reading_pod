class UsersController < ApplicationController
    
    before_action :set_user, only: [:show, :edit, :update, :delete]
    
    def show
        current_user = User.find_by_id(params[:id])
        #Do I even need User.find_by_id(params[:id])??
    end

    def edit
        if !current_user
            redirect_to new_user_session_path
        end
    end

    def update
        @user.update(user_params)
        if @user.save
            redirect_to @user(current_user)
        else
            render :edit
    end

    def destroy
        @user.destroy
        flash[:notice] = "Account Deleted"
        redirect_to new_user_session_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :professional_field, :bio, :email)
    end

    def set_user
        @user = User.find_by_id(params[:id])
    end
end

#How do I add password to user_params so a user can change their password from their profile #page?
#create_table "users", force: :cascade do |t|
#   
#    t.string "encrypted_password", default: "", null: false
    
    