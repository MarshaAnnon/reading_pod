class ApplicationController < ActionController::Base

    def home
        @pods = Pod.all
        @categories = Category.all
    end
end
