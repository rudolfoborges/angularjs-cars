class CarsController < ApplicationController

	respond_to :json

	def index
		@cars = Car.order("manufacturer, model")
		respond_with(@cars)
	end

	def show
		@car = Car.find_by_plate(params[:id])
		respond_with(@car)
	end

	def create
		@car = Car.new(params[:car])
	end

end
