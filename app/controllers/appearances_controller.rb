class AppearancesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index 
        render json: Appearance.all
    end

    def show 
        render json: find_appearance
    end 

    def create 
        appearance = Appearance.create!(appearance_params)
        render json: appearance, status: :created
    end 


    private

    def appearance_params
        params.permit(:rating)
    end


    def find_appearance
        Appearance.find(params[:id])
    end 

    def render_unprocessable_entity 
        render json: {errors: invalid.record.full_messages}, status: :unprocessable_entity
    end

end
