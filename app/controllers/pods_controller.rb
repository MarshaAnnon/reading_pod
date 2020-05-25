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
        if pod.save?
            current_user.pod << @pod
            redirect_to pod_path
        else
            if @pod.errors.any?
                @pod.errors.full_messages.each do | msg |
                    flash[:error] = msg
                end
            end
            redirect_to pods_path
        end
    end

    def show
        if Pod.save
            redirect_to @pod
        end
    end

    def edit
        

    end

    def update


    end

    def destroy
    end

    private

    def pod_params
        require.params(:pod).permit(:pod_name, :current_book)
    end

    def set_pod
        @pod = Pod.find_by_id(params[:id])
    end
end
