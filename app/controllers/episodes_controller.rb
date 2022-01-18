class EpisodesController < ApplicationController

    def index 
        render json: Episode.all
    end

    def show 
        render json: find_episode
    end 

    def destroy 
        episode = find_episode
        episode.destroy 
        head: :no_content
    end 


    private

    def find_episode
        Episode.find(params[:id])
    end 

end
