class WildLivesController < ApplicationController
    def index
        wild = WildLife.all
        render json: wild
    end

    def show
        wild = WildLife.find(params[:id])
        render json: wild
    end

    def create 
        wild = WildLife.create(wild_params)
        if wild.valid?
            render json: wild
        else
            render json: wild.errors
        end
    end

    def update
        wild = WildLife.find(params[:id])
        wild.update(wild_params)
        if wild.valid?
            render json: wild
        else
            render json: wild.errors
        end
    end

    def destroy
        wild = WildLife.find(params[:id])
        
        if wild.destroy
            render json: wild
        else
            render json: wild.errors
        end
    end

    private

    def wild_params
        params.require(:wild_life).permit(:common_name, :scientific_binomial, :sighting_attributes => [:latitude, :longitude, :date])
    end


end
