class PlantsController < ApplicationController

    # GET /plants
    def index
        render json: Plant.all
    end

    # POST /plants
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    # GET /plants/:id
    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end

end
