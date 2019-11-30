class FlightsController < ApplicationController

    before_action :find_flight, only: [:show, :update, :destroy]

    def index
        @flights = Flight.all
        render json: @flights
    end

    def show
        render json: @flight
    end

    def create
        @flight = Flight.new(flight_params)

        if @flight.valid?
            @flight.save
            render json: @flight, status: :created
        else
            render json: @flight.errors, status: :unprocessable_entity
        end
    end

    def update
        if @flight.update(flight_params)
            render json: @flight
        else
            render json: @flight.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @flight.destroy
    end

    private

    def find_flight
        @flight = Flight.find(params[:id])
    end

    def flight_params
        params.require(:flight).permit(:direction, :datetime, :airport, 
            :airline, :number, :traveler_id)
    end

end