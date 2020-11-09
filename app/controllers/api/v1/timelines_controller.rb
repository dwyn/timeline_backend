class Api::V1::TimelinesController < ApplicationController

    def index
        timelines = Timeline.all
        render json: timelines
        # instead of rendering erb files, we are rendering json file
        # also, don't need instance variables because we are rendering json
    end

    def create
        timeline = Timeline.new(timeline_params)
    end

    private

    def timeline_params
        require(:timeline).permit(:title, :description, :user_id)
    end

end
