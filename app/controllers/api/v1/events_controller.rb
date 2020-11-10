class Api::V1::EventsController < ApplicationController

    def index
        events = Event.all
        render json: EventSerializer.new(events)
    
        # instead of rendering erb files, we are rendering json file
        # also, don't need instance variables because we are rendering json
    end

    def create
        event = Event.new(event_params)
        if event.save
            render json: event, status: :accepted
        else
            render json: {errors: event.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def event_params
        require(:event).permit(:year, :title, :description, :timeline_id)
    end

end
