class ApplicationController < ActionController::Base

    def home
        @pods = Pod.all
        @categories = Category.all
        @user = User.pods.all
    end
    
end
