class Api::V1::TimelinesController < ApplicationController
    

    def index
        timelines = Timeline.all
        render json: TimelineSerializer.new(timelines)
    

        # render json: timelines, include:
        #     [:events => {:only => [:year, :title, :description]}]

        # render json: TimelineSerializer.new(timelines)
        # options = {
        #     include: [:events]
        # }
    end

    def create
        timeline = Timeline.new(timeline_params)
        if timeline.save
            render json: TimelineSerializer.new(timeline), status: :accepted
        else
            render json: {errors: timeline.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def timeline_params
        params.require(:timeline).permit(:title, :description)
            #  :user_id)
    end

end
