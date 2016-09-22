class AttendingController < ApplicationController
    before_action :authorize

    def create
        attend = Attend.new(user:current_user, event: Event.find(params[:id]) )
        if attend.save
            redirect_to '/events'
        else
            redirect_to '/events'
        end
    end

    def destroy
        attend = Attend.find_by(event:Event.find(params[:id]) , user: current_user)
        attend.destroy
        redirect_to '/events'
    end
end
