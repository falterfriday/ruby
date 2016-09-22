class EventsController < ApplicationController
    before_action :authorize

    def index
        @state_events = Event.where(state: current_user.state)
        @other_events = Event.where.not(state: current_user.state)
    end

    def show
        @event = Event.find(params[:id])
        @attending = Attend.where(event: params[:id]).includes(:user)
        @comments = Comment.where(event: params[:id])
    end

    def create
        event = Event.new(
            name:params[:name],
            date:params[:date],
            location:params[:location],
            state:params[:state],
            user:current_user
            )
        if event.save
            redirect_to '/events'
        else
            flash[:errors] = event.errors.full_messages
            redirect_to '/events'
        end
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        redirect_to '/events'
    end

end
