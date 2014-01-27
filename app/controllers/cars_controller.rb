class CarsController < ApplicationController 

	def index

	end

	def new

	end

	def create

	end

	def show

	end

	def edit
		@car = Car.find(params[:id])
	end

	def update
		car = Car.find(params[:id])
		car.year = params[:year].to_i
		car.make = params[:make]
		car.model = params[:model]
		car.color = params[:color]
		car.save

		redirect_to car_path(car)
	end

	def destroy

	end


end


#   cars GET    /cars(.:format)          cars#index
#          POST   /cars(.:format)          cars#create
#  new_car GET    /cars/new(.:format)      cars#new
# edit_car GET    /cars/:id/edit(.:format) cars#edit
#      car GET    /cars/:id(.:format)      cars#show
#          PUT    /cars/:id(.:format)      cars#update
#          DELETE /cars/:id(.:format)      cars#destroy