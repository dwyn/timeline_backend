class Api::V1::TimelinesController < ApplicationController

    def index
        timelines = Timeline.all
        # options = {
        #     # include associated event; must match the wording and associations used in association in the model file for serializer to make those associations
        #     include: [:event]
        # }
        # render json: timelines
        render json: TimelineSerializer.new(timelines)
        # render json: TimelineSerializer.new(timelines, options)

        # instead of rendering erb files, we are rendering json file
        # also, don't need instance variables because we are rendering json
    end

    def create
        timeline = Timeline.new(timeline_params)
        byebug
        if timeline.save
            render json: TimelineSerializer.new(timeline), status: :accepted
        else
            render json: {errors: timeline.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def timeline_params
        require(:timeline).permit(:title, :description, :user_id)
    end

end
