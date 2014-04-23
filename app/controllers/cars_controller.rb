class CarsController < ApplicationController

	respond_to :json

	def index
		@cars = Car.order("manufacturer, model")
		#@car = Car.new(model: "Punto", manufacturer: "Fiat", plate: "NZC7078", price: 35000, owner_name: "Rudolfo Borges", owner_email: "oliveira.rudolfo@gmail.com")
		#@car.save
		respond_with(@cars)
	end

	def show
		@car = Car.find_by_plate(params[:id])
		respond_with(@car)
	end

	def create
		print "!!!!!!!!!!!!!!!!!!!!!!!!!!chegou aqui!!!!!!!!!!!!!!!!!!"
		print params.require(:car)
		@car = Car.new(params.require(:car))
		print @car
		@car.save
		respond_with(@car)
	end

end
