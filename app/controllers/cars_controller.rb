class CarsController < ApplicationController 

	def index
		@cars = Car.all
	end

	def new

		render :'cars/new'

	end

	def create

		@year = params[:year]
		@make = params[:make]
		@model = params[:model]
		@color = params[:color]

		@car = Car.create!({
			year: @year, 
			make: @make,
			model: @model,
			color: @color
		})

		render :'cars/show'
		
	end

	def show
		@car = Car.find(params[:id])
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
		@car = Car.find(params[:id])

	end


end


#   cars GET    /cars(.:format)          cars#index
#          POST   /cars(.:format)          cars#create
#  new_car GET    /cars/new(.:format)      cars#new
# edit_car GET    /cars/:id/edit(.:format) cars#edit
#      car GET    /cars/:id(.:format)      cars#show
#          PUT    /cars/:id(.:format)      cars#update
#          DELETE /cars/:id(.:format)      cars#destroy