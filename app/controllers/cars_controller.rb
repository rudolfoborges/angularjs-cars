class CarsController < ApplicationController

	respond_to :json

	def index
		respond_with Car.order("manufacturer, model")
	end

	def show
		respond_with Car.find_by_plate(params[:id])
	end

	def create
		respond_with Car.create(car_params)
	end

	def update
		respond_with Car.find_by_plate(params[:id]).update_attributes(car_params)
	end

	private
		def car_params
			params.require(:car).permit(:model, :manufacturer, :plate, :price, :owner_name, :owner_email)
		end

end
