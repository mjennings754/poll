class VotesController < ApplicationController

    def create
        poll = Osrspoll.find(params[:osrspoll_id])

        vote = Vote.new(
            user: current_user,
            poll_option_id: params[:poll_option_id]
        )

        if vote.save
            redirect_to poll
        else
            redirect_to poll
        end
    end
end
