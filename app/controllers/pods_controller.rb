class PodsController < ApplicationController

    before_action :set_pod, only: [:show, :edit, :update, :destroy]

    def index
        @pods = Pod.all
    end

    def new
        @pod = current_user.pods.build
    end

    def create
        raise params
        @pod = current_user.pods.build(pod_params)
        if @pod.save
            @pod.books.build
            current_user.pods << @pod
            redirect_to pod_path(@pod)#There is something wrong here. Where should this take the user - you need to think more - Maybe this should go to the newly created pod show page
        else
            redirect_to pods_path
        end
    end

    def show
        if !@pod
            redirect_to pods_path
        end
    end

    def edit
        if !@pod
            redirect_to pods_path
        end
    end

    def update
        if @pod
            @pod.update(pod_params)
            if @pod.errors.any?
                render "edit"
            else
                redirect_to pods_path
            end
        else
            render "edit"
        end
    end

    def destroy
        @pod.destroy
        redirect_to pod_path
    end

    private

    def pod_params
        params.require(:pod).permit(:pod_name, :current_book, category_id:[], book_attributes:[:title, :author, :author_bio, :book_summary])
    end

    def set_pod
        @pod = Pod.find_by_id(params[:id])
    end
end
