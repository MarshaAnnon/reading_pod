class PodsController < ApplicationController

    before_action :set_pod, only: [:show, :edit, :update, :destroy]

    def index
        @pods = Pod.all
    end

    def new
        @pod = current_user.pod.build
    end

    def create
        @pod = current_user.pod.build
        binding.pry
        if pod.save?
            current_user.pod << @pod
            redirect_to pod_path
        else
            redirect_to pods_path
        end
    end

    def show
        if !@pod
            redirect_to @pod
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
        require.params(:pod).permit(:pod_name, :current_book, book_attribute:[:title, :author, :author_bio, :book_summary])
    end

    def set_pod
        @pod = Pod.find_by_id(params[:id])
    end
end
