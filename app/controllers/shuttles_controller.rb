class ShuttlesController < ApplicationController

    before_action :find_shuttle, only: [:show, :update, :destroy]

    def index
        @shuttles = Shuttle.all
        render json: @shuttles
    end

    def show
        render json: @shuttle
    end

    def create
        @shuttle = Shuttle.new(shuttle_params)

        if @shuttle.valid?
            @shuttle.save
            render json: @shuttle, status: :created
        else
            render json: @shuttle.errors, status: :unprocessable_entity
        end
    end

    def update
        if @shuttle.update(shuttle_params)
            render json: @shuttle
        else
            render json: @shuttle.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @shuttle.destroy
    end

    private

    def find_shuttle
        @shuttle = Shuttle.find(params[:id])
    end

    def shuttle_params
        params.require(:shuttle).permit(:datetime)
    end

end