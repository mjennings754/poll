class OsrspollsController < ApplicationController
    def index
        @polls = Osrspoll.all
    end

    def show
        @poll = Osrspoll.find(params[:id])
    end

    def new
        @poll = Osrspoll.new
    end

    def create
        @poll = Osrspoll.new(poll_params)
        if @poll.save
            redirect_to @poll
        else
            render :new
        end
    end

    private

    def poll_params
        params.expect(osrspoll: [:question])
    end
end
