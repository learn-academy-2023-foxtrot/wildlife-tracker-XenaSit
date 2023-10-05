class WildLivesController < ApplicationController
    def index
        wild = WildLife.all
        render json: wild
    end
end
