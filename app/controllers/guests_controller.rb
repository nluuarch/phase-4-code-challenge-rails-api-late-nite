class GuestsController < ApplicationController

    def index 
        render json: Guests.all
    end

end
