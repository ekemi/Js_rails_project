class HousesController < ApplicationController

    def index
        houses = House.all 
        render json: HouseSerializer.new(houses).to_serialized_json
    end
    
    def show

        house = House.find_by(params[:id])
        render json: HouseSerializer.new(house).to_serialized_json
    end

    def create
        house = House.new(house_params)
        house.save
        render json: house
    end

    private 

    def house_params
        params.require(:house).permit(:name, :members)
    end
end